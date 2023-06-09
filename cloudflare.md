# Deploying to cloudflare pages
Use `Hugo` preset and change the command to:
```sh
npm install && hugo --gc --minify
```

# Cloudflare Pages v1
Version 1 uses old Hugo, Go and Node.js version (0.54.0, 1.14.4 and 12.18.0), you need to switch to a supported ones (>= 0.104.0, 1.20, 18) using env vars:
```sh
HUGO_VERSION=0.111.3
GO_VERSION=1.20.3
NODE_VERSION=18.16.0
```

# Cloudflare Pages v2
Version 2 uses appropriate versions of Hugo, Go and Node.js by default.