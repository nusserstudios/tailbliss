<p align="center" style="padding-top:20px">
 <img width="100px" src="images/logo-tailbliss-round.svg" align="center" alt="TailBliss Logo" />
 <h1 align="center">TailBliss</h1>
 <p align="center">TailBliss is an opinionated Hugo theme with Tailwind CSS 4.x, Vite integration, and Alpine.js with light/dark modes.</p>
 <p align="center"><strong>Current Version: 2.0+ (Hugo Theme Structure)</strong></p>
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

## 📚 **Table of Contents**
- [🚨 Breaking Changes](#-breaking-changes---new-theme-structure)
- [🚀 Quick Start](#-quick-start)
- [⚙️ Configuration](#%EF%B8%8F-configuration)
- [🔄 Migration Guide](#-migration-guide)
- [✨ What's New in Tailwind CSS 4](#-whats-new-in-tailwind-css-4-migration)
- [✨ Features](#-features)
- [📧 Contact Form Setup](#-contact-form-setup)
- [Credits](#credits)

---

## 🚨 **BREAKING CHANGES** - New Theme Structure

**TailBliss has been restructured as a proper Hugo theme!** This is a **breaking change** that affects how you install and use TailBliss.

### 📁 **New Structure (v1.1+)**
TailBliss now follows the standard Hugo theme convention:
- **Theme files**: Located in the root directory
- **Example content**: Located in `exampleSite/` directory
- **User sites**: Must be created separately using `hugo new site` command

### 🔄 **Migration Required**
If you're upgrading from v0.5, you'll need to migrate your content. See the [Migration Guide](#migration-guide) below.

### 🌳 **Branch Information**
- **`exampleSite`** branch: Contains the new theme structure (recommended)
- **`main`** branch: Contains the legacy v0.5 structure (deprecated)

---

## 🚀 **Quick Start**

### Option 1: Use as Hugo Theme (Recommended)
```bash
# Create a new Hugo site
hugo new site my-tailbliss-site
cd my-tailbliss-site

# Add TailBliss as a theme
git submodule add -b exampleSite https://github.com/nusserstudios/tailbliss.git themes/tailbliss

# Copy example content (optional)
cp -r themes/tailbliss/exampleSite/* .

# Install dependencies
pnpm install

# Start developing
pnpm run dev
```

### Option 2: Clone and Customize
```bash
# Clone the repository
git clone -b exampleSite https://github.com/nusserstudios/tailbliss.git my-site
cd my-site

# Copy example content to root
cp -r exampleSite/* .

# Install dependencies
pnpm install

# Start developing
pnpm run dev
```

### 📋 **Available Commands**
##### Install dependencies
```bash
pnpm install  # recommended
# or
npm install
```

##### Development
```bash
pnpm run dev  # recommended
# or 
npm run dev
```

##### Production Build
```bash
pnpm run build  # recommended
# or
npm run build
```

**`pnpm run dev`** runs Vite CSS processing with cache busting alongside Hugo server with hot reloading.

---

## ⚙️ **Configuration**

### **Basic Setup**
After installation, update your `hugo.yaml` configuration:

```yaml
baseURL: 'https://yourdomain.com/'  # Replace with your actual domain
title: Your Site Title
theme: tailbliss
```

### **Important Configuration Notes**
- **baseURL**: Set this to your actual domain for proper canonical URLs and social sharing
- **theme**: Must be set to `tailbliss` when using as a Hugo theme
- **Example**: The demo site uses `https://tailbliss.com/`

---

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

---

## 🔄 **Migration Guide**

### Migrating from TailBliss v0.5 to v1.1+

If you have an existing TailBliss v0.5 site, follow these steps to migrate:

#### **Step 1: Backup Your Content**
```bash
# Create a backup of your current site
cp -r my-old-tailbliss-site my-old-tailbliss-backup
```

#### **Step 2: Create New Hugo Site Structure**
```bash
# Create a new Hugo site
hugo new site my-new-tailbliss-site
cd my-new-tailbliss-site

# Add TailBliss v1.1 as a theme
git submodule add -b exampleSite https://github.com/nusserstudios/tailbliss.git themes/tailbliss
```

#### **Step 3: Copy Your Content**
```bash
# Copy your existing content
cp -r ../my-old-tailbliss-backup/content/* ./content/
cp -r ../my-old-tailbliss-backup/static/* ./static/
cp -r ../my-old-tailbliss-backup/assets/* ./assets/

# Copy your Hugo configuration (and merge with new theme settings)
cp ../my-old-tailbliss-backup/hugo.yaml ./hugo.yaml
```

#### **Step 4: Update Configuration**
Edit your `hugo.yaml` to include the theme and your domain:
```yaml
baseURL: 'https://yourdomain.com/'
theme: tailbliss
```

#### **Step 5: Install Dependencies & Test**
```bash
# Install dependencies
pnpm install

# Test your site
pnpm run dev
```

#### **Common Migration Issues**

1. **Missing Theme Reference**: Make sure `theme: tailbliss` is in your `hugo.yaml`
2. **CSS Not Loading**: Ensure you've run `pnpm install` in your site root
3. **Images Not Displaying**: Check that images are in the correct `/assets` or `/static` directories
4. **Custom Layouts**: If you customized layouts, copy them to your site's `layouts/` directory
5. **Quick Setup**: You can copy the entire `exampleSite` content to your root directory:
   ```bash
   # Copy all exampleSite content to root
   cp -r exampleSite/* .
   ```

#### **Fresh Start Option**
If you prefer to start fresh:
```bash
# Use the exampleSite as a starting point
git clone -b exampleSite https://github.com/nusserstudios/tailbliss.git my-site
cd my-site
cp -r exampleSite/* .
pnpm install
pnpm run dev
```

---

## ✨ **Features**

Has paginated Categories and Tags. Markdown files will automatically convert images put into `/assets` folder to .webp images. 

## Image shortcodes for webp as well.
```hugo
{{< imgc src="img-name.jpg" alt="Place alt text here." >}}
```

<a href="https://www.buymeacoffee.com/nusserstudios" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/default-blue.png" alt="Buy Me A Coffee" height="41" width="174" /></a>

## 📧 **Contact Form Setup**
To use the contact form:

1. Visit [FormSubmit.Co](https://formsubmit.co/)
2. Locate the contact form in `content/contact.md` (or `exampleSite/content/contact.md` if using as reference)
3. Update the form action with your email address:
   ```html
   action="https://formsubmit.co/your@email.com" method="POST"
   ```


## Credits
**4044ever** - Original Theme  
https://github.com/4044ever/Hugo-Tailwind-3.0.git

**Jan Heise** - Alpine.js Navbar  
https://github.com/jan-heise/responsive-navbar-with-dropdown

**TailBliss Team** - Tailwind CSS 4 Migration, Vite Integration & OKLCH Colors

Made for Hacktoberfest, with ❤️ by NusserStudios.
