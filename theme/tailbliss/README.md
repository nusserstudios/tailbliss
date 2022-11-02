![Tailbliss](https://raw.githubusercontent.com/nusserstudios/tailbliss/main/static/images/tailbliss-full-blue.png)

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