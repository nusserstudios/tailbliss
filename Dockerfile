# syntax=docker/dockerfile:1
#
# Reproducible build: node + Hugo -> static site -> nginx.
# Replaces the previous single-stage file that did `COPY --from=build` with no
# such stage, which made `docker build` fail outright.
#
# Build:  docker build -t tailbliss:<tag> .
# Run:    docker run -p 1313:80 tailbliss:<tag>

# ---------- build ----------
FROM node:22-bookworm-slim AS build
ARG HUGO_VERSION=0.170.1

# Hugo publishes per-architecture tarballs. Hardcoding linux-amd64 breaks every
# arm64 build (Apple Silicon, Graviton, Ampere) at this layer: the installed
# binary is the wrong architecture and `hugo version` dies with a dynamic loader
# error. TARGETARCH is auto-populated by BuildKit with the platform being built;
# declare it with no default so that value is not masked. The shell fallback
# keeps non-BuildKit builders (which never set it) on amd64.
ARG TARGETARCH

# Hugo 0.170.0 dropped the "extended" edition: LibSass was the only reason it
# existed, and Dart Sass is now the only transpiler. The release still publishes
# `hugo_extended_*` archives as transitional aliases, but those are byte-identical
# to the standard tarballs (verified against checksums.txt) and will be removed,
# so download the standard archive. This theme compiles CSS with Vite, not Hugo's
# Sass pipeline, so losing LibSass costs nothing.
#
# The checksum is verified instead of piping curl straight into tar: this binary
# is the tool that renders every page, and a silently corrupted or swapped
# tarball should fail the build loudly rather than produce a broken site.
RUN apt-get update \
 && apt-get install -y --no-install-recommends ca-certificates curl git \
 && rm -rf /var/lib/apt/lists/* \
 && arch="${TARGETARCH:-amd64}" \
 && base="https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}" \
 && asset="hugo_${HUGO_VERSION}_linux-${arch}.tar.gz" \
 && cd /tmp \
 && curl -fsSL -o "${asset}" "${base}/${asset}" \
 && curl -fsSL -o hugo.checksums "${base}/hugo_${HUGO_VERSION}_checksums.txt" \
 && grep -q " ${asset}\$" hugo.checksums \
 && grep " ${asset}\$" hugo.checksums | sha256sum -c - \
 && tar -xz -C /usr/local/bin -f "${asset}" hugo \
 && rm -f "${asset}" hugo.checksums \
 && hugo version

WORKDIR /app
RUN corepack enable && corepack prepare pnpm@11.24.0 --activate

# --ignore-scripts matters twice: it skips the repo's "install" lifecycle
# (install.js pulls content from origin/exampleSite, absent in this layer) and
# it satisfies pnpm 11's build-script policy. esbuild ships platform binaries as
# optional deps, so its postinstall is not required.
COPY package.json pnpm-lock.yaml install.js ./
RUN pnpm install --frozen-lockfile --ignore-scripts

COPY . .
RUN pnpm run build

# ---------- serve ----------
FROM nginx:alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=build /app/public /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
