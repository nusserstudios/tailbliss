<p align="center" style="padding-top:20px">
 <img width="100px" src="images/logo-tailbliss-round.svg" align="center" alt="GitHub Readme Stats" />
 <h2 align="center">TailBliss</h2>
 <p align="center">A Hugo Starter template with TailWindCSS and Alpine.js.</p>
</p>
  <p align="center">
    <a href="https://github.com/nusserstudios/tailbliss/actions/">
      <img alt="Tests Passing" src="https://github.com/nusserstudios/tailbliss/actions/workflows/codeql.yml/badge.svg" />
    </a>
    <a href="https://github.com/nusserstudios/tailbliss/graphs/contributors">
      <img alt="GitHub Contributors" src="https://img.shields.io/github/contributors/nusserstudios/tailbliss" />
    </a>
    <a href="https://codecov.io/gh/nusserstudios/tailbliss">
      <img src="https://codecov.io/gh/nusserstudios/tailbliss/branch/master/graph/badge.svg" />
    </a>
    <a href="https://img.shields.io/github/contributors/nusserstudios/tailblississues">
      <img alt="Issues" src="https://img.shields.io/github/contributors/nusserstudios/tailbliss?color=0088ff" />
    </a>
    <a href="https://github.com/anuraghazra/github-readme-stats/pulls">
      <img alt="GitHub pull requests" src="https://img.shields.io/github/contributors/nusserstudios/tailbliss?color=0088ff" />
    </a>
    <br />
    <br />
    <a href="https://a.paddle.com/v2/click/16413/119403?link=1227">
      <img src="https://img.shields.io/badge/Supported%20by-VSCode%20Power%20User%20%E2%86%92-gray.svg?colorA=655BE1&colorB=4F44D6&style=for-the-badge"/>
    </a>
    <a href="https://a.paddle.com/v2/click/16413/119403?link=2345">
      <img src="https://img.shields.io/badge/Supported%20by-Node%20Cli.com%20%E2%86%92-gray.svg?colorA=61c265&colorB=4CAF50&style=for-the-badge"/>
    </a>
  </p>

  <p align="center">
    <a href="#demo">View Demo</a>
    ·
    <a href="https://github.com/nusserstudios/tailbliss/issues/new/choose">Report Bug</a>
    ·
    <a href="https://github.com/nusserstudios/tailbliss/issues/new/choose">Request Feature</a>
    ·
    <a href="https://github.com/nusserstudios/tailbliss/discussions">Ask Question</a>
  </p>
</p>

# TailBliss
Hugo + TailwindCSS 3.2.0 + Alpine.js for Hacktoberfest

TailBliss is an opinionated Hugo Starter with Tailwind CSS 3.2 and Alpine.js with light/dark modes.

**Install to VS Code with:**  
`git clone git@github.com:nusserstudios/hugo-twcss-alpine.git your-name`

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
{{< imgh src="img-name.jpg" alt="Place alt text here." >}}

<a href="https://www.buymeacoffee.com/nusserstudios" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/default-blue.png" alt="Buy Me A Coffee" height="41" width="174"></a>

## Credits
4044ever - Original Theme
https://github.com/4044ever/Hugo-Tailwind-3.0.git

Jan Heise - Alpine.js Navbar
https://github.com/jan-heise/responsive-navbar-with-dropdown

Made for Hacktoberfest, with ❤️ by NusserStudios.