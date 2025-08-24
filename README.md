<p align="center" style="padding-top:20px">
 <img width="100px" src="images/logo-tailbliss-round.svg" align="center" alt="GitHub Readme Stats" />
 <h1 align="center">TailBliss</h1>
 <p align="center">TailBliss is an opinionated Hugo Starter with Tailwind CSS 4.x, Vite integration, and Alpine.js with light/dark modes.</p>
</p>
  <p align="center">
    <a href="https://github.com/nusserstudios/tailbliss/actions/">
      <img alt="Tests Passing" src="https://github.com/nusserstudios/tailbliss/actions/workflows/codeql.yml/badge.svg" />
    </a>
    <a href="https://github.com/nusserstudios/tailbliss/contributors">
      <img alt="GitHub Contributors" src="https://img.shields.io/github/contributors/nusserstudios/tailbliss?color=0088ff" />
    </a>
    <a href="https://github.com/nusserstudios/tailbliss/issues">
      <img alt="Issues" src="https://img.shields.io/github/issues/nusserstudios/tailbliss?color=fc0b03" />
    </a>
    <a href="https://github.com/nusserstudios/tailbliss/pulls">
      <img alt="GitHub pull requests" src="https://img.shields.io/github/issues-pr/nusserstudios/tailbliss?color=f97316" />
    </a>
    <br />
    <br />
    <a href="https://gohugo.io/">
      <img src="https://img.shields.io/badge/Hugo%20-0.105.0%20-gray.svg?colorA=c9177e&colorB=FF4088&style=for-the-badge"/>
    </a>
    <a href="https://tailwindcss.com/">
      <img src="https://img.shields.io/badge/TailwindCSS%20-V4-gray.svg?colorA=0284c7&colorB=38bdf8&style=for-the-badge"/>
    </a>
    <a href="https://vitejs.dev/">
      <img src="https://img.shields.io/badge/Vite%20-V7-gray.svg?colorA=646cff&colorB=747bff&style=for-the-badge"/>
    </a>
    <a href="https://alpinejs.dev/">
      <img src="https://img.shields.io/badge/Alpine.js%20-V3-gray.svg?colorA=68a5af&colorB=77c1d2&style=for-the-badge"/>
    </a>
  </p>

  <p align="center">
    <a href="https://tailbliss.netlify.app/">View Demo</a>
    ·
    <a href="https://github.com/nusserstudios/tailbliss/issues">Report Bug</a>
    ·
    <a href="https://github.com/nusserstudios/tailbliss/discussions/categories/feature-request">Request Feature</a>
    ·
    <a href="https://github.com/nusserstudios/tailbliss/discussions/categories/general">Ask Question</a>
  </p>

<p align="center">
<img src="https://raw.githubusercontent.com/nusserstudios/tailbliss/main/images/tailbliss-lighthouse-11-03-22.png" alt="Tailbliss Google Lighthouse Score" style="margin: 25px auto; max-width: 830px" width="100%" height="" />
</p>

**Install to VS Code with:**  
```bash
git clone git@github.com:nusserstudios/tailbliss your-name
cd your-name
```

##### Install with pnpm (recommended)
```bash
pnpm install
```
##### Install with NPM 
```bash
npm install
```

**To start developing:**
##### Develop with pnpm (recommended)
```bash
pnpm run dev
```
##### Develop with NPM 
```bash
npm run dev
```

**To generate the site HTML:**
##### Build with pnpm (recommended)
```bash
pnpm run build
```
##### Build with NPM 
```bash
npm run build
```

**`pnpm run dev`** runs Vite CSS processing with cache busting alongside Hugo server with hot reloading.

## 🚀 What's New in Tailwind CSS 4 Migration

TailBliss has been completely upgraded from Tailwind CSS 3.2 to 4.x with significant improvements:

### ⚡ **Vite Integration**
- **Cache Busting**: Automatic CSS hash generation (e.g., `main.abc123.css`)
- **Hot Reloading**: Instant CSS updates during development
- **Build Performance**: Faster CSS processing with Vite

### 🎨 **Modern Color System**
- **OKLCH Colors**: All colors now use the OKLCH color space for better perceptual uniformity
- **Indigo Primary**: Updated from blue to indigo with proper OKLCH values
- **Enhanced Contrast**: Better light/dark mode color relationships

### 🛠️ **New CSS Architecture**
- **CSS-First Approach**: Configuration moved from `tailwind.config.js` into CSS using `@theme` directive
- **Custom Variants**: Dark mode uses `@custom-variant` instead of class-based configuration
- **Custom Utilities**: Built-in `prose-2xl` utility for wider content (80ch with 110% font-size)

### 📝 **Improved Typography**
- **Custom Prose Styles**: Removed `@tailwindcss/typography` dependency
- **OKLCH Integration**: All text colors use OKLCH for consistent rendering
- **Enhanced Code Highlighting**: Better syntax highlighting colors in light/dark modes
- **Markdown Tables**: Improved table styling within prose content

### 🏗️ **Development Workflow**

#### Available Scripts:
```bash
pnpm run dev          # Development: Concurrent Vite + Hugo
pnpm run build        # Production: Build CSS then Hugo
pnpm run build:css    # Build CSS only with Vite
pnpm run watch:css    # Watch CSS changes only
pnpm run watch:hugo   # Hugo server only
```

#### Build Process:
1. **Vite** processes `assets/css/main.css` with Tailwind CSS 4
2. **Generates** hashed CSS files in `static/css/`
3. **Hugo** automatically references the latest hashed CSS
4. **Browser cache** is invalidated on every change

### 🎯 **Key Benefits**
- **Faster Development**: Vite's lightning-fast hot reloading
- **Better Caching**: Automatic cache busting eliminates stale CSS
- **Modern Colors**: OKLCH provides more accurate colors across devices  
- **Simplified Config**: CSS-first configuration is more maintainable
- **Enhanced Typography**: Custom prose styles with better performance

### 📦 **Dependencies Updated**
- `tailwindcss`: `^3.2.x` → `^4.1.x`
- Added: `@tailwindcss/vite`, `@tailwindcss/postcss`, `vite`
- Removed: `@tailwindcss/typography` (replaced with custom styles)

Has paginated Categories and Tags. Markdown files will automatically convert images put into `/assets` folder to .webp images. 

## Image shortcodes for webp as well.
```hugo
{{< imgc src="img-name.jpg" alt="Place alt text here." >}}
```

<a href="https://www.buymeacoffee.com/nusserstudios" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/default-blue.png" alt="Buy Me A Coffee" height="41" width="174" /></a>

## Form
To use the form, visit [FormSubmit.Co](https://formsubmit.co/). Locate the contact form in "content/contact.md", and update the form action with the email address you want on this line: **action="https://formsubmit.co/your@email.com" method="POST"**


## Credits
**4044ever** - Original Theme  
https://github.com/4044ever/Hugo-Tailwind-3.0.git

**Jan Heise** - Alpine.js Navbar  
https://github.com/jan-heise/responsive-navbar-with-dropdown

**TailBliss Team** - Tailwind CSS 4 Migration, Vite Integration & OKLCH Colors

Made for Hacktoberfest, with ❤️ by NusserStudios.
