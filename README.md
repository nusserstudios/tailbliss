<p align="center" style="padding-top:20px">
 <img width="100px" src="images/logo-tailbliss-round.svg" align="center" alt="GitHub Readme Stats" />
 <h1 align="center">TailBliss</h1>
 <p align="center">TailBliss is an opinionated Hugo Starter with Tailwind CSS 3.2 and Alpine.js with light/dark modes.</p>
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
    <br>
    <br>
    <a href="https://gohugo.io/">
      <img src="https://img.shields.io/badge/Hugo%20-0.105.0%20-gray.svg?colorA=c9177e&colorB=FF4088&style=for-the-badge"/>
    </a>
    <a href="https://tailwindcss.com/">
      <img src="https://img.shields.io/badge/TailwindCSS%20-V3-gray.svg?colorA=0284c7&colorB=38bdf8&style=for-the-badge"/>
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
</p>

<p align="center">
<img src="https://raw.githubusercontent.com/nusserstudios/tailbliss/main/images/tailbliss-lighthouse-11-03-22.png" alt="Tailbliss Google Lighthouse Score" style="margin: 25px auto; max-width: 830px" width="100%" height="" />
</p>

**Install to VS Code with:**  
`git clone git@github.com:nusserstudios/tailbliss your-name`

##### Install with NPM 
`npm install`
##### Install with Yarn
`yarn`

**To start developing:**
##### Develop with NPM 
`npm run start`
##### Develop with Yarn
`yarn start`

**To generate the site HTML:**
##### Build with NPM 
`npm run build`
##### Build with Yarn
`yarn build`

**npm run start** will run two commands parallel:  
`npx tailwindcss -i ./assets/css/main.css -o ./assets/css/style.css --watch`

Has paginated Categories and Tags. Markdown files will automatically convert images put into `/assets` folder to .webp images. 

## Image shortcodes for webp as well.
{{< imgc src="img-name.jpg" alt="Place alt text here." >}}

<a href="https://www.buymeacoffee.com/nusserstudios" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/default-blue.png" alt="Buy Me A Coffee" height="41" width="174"></a>

## Form
To use the form, visit [FormSubmit.Co](https://formsubmit.co/). Locate the contact form in "content/contact.md", and update the form action with the email address you want on this line: **action="https://formsubmit.co/your@email.com" method="POST"**


## Credits
4044ever - Original Theme
https://github.com/4044ever/Hugo-Tailwind-3.0.git

Jan Heise - Alpine.js Navbar
https://github.com/jan-heise/responsive-navbar-with-dropdown

Made for Hacktoberfest, with ❤️ by NusserStudios.
