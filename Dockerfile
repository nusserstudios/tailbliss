# syntax=docker/dockerfile:1
#
# Reproducible build: node + Hugo extended -> static site -> nginx.
# Replaces the previous single-stage file that did `COPY --from=build` with no
# such stage, which made `docker build` fail outright.
#
# Build:  docker build -t tailbliss:<tag> .
# Run:    docker run -p 1313:80 tailbliss:<tag>

# ---------- build ----------
FROM node:22-bookworm-slim AS build
ARG HUGO_VERSION=0.169.0

RUN apt-get update \
 && apt-get install -y --no-install-recommends ca-certificates curl git \
 && rm -rf /var/lib/apt/lists/* \
 && curl -fsSL "https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_linux-amd64.tar.gz" \
    | tar -xz -C /usr/local/bin hugo \
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
