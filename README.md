![Tailbliss](https://tailbliss.netlify.app/images/tailbliss-full-blue.png)

# TailBliss
Hugo + TailwindCSS 3.2.0 + Alpine.js for Hacktoberfest

TailBliss is an opinionated Hugo Starter with Tailwind CSS 3.2 and Alpine.js with light/dark modes.

**Install to VS Code with:**  
`git clone git@github.com:nusserstudios/hugo-twcss-alpine.git your-name`
With NPM 
`npm install`

**To start developing:**
With NPM 
`npm run start`
With Yarn
`yarn start`

**To generate the site HTML:**
With NPM 
`npm run build`
With Yarn
`yarn build`

**npm run start** will run two commands parallel:  
`npx tailwindcss -i ./assets/css/main.css -o ./assets/css/style.css --watch`

Has paginated Categories and Tags. Markdown files will automatically convert images put into `/assets` folder to .webp images. 

## Image shortcodes for webp as well.
{{< imgh src="img-name.jpg" alt="Place alt text here." >}}

<a href="https://www.buymeacoffee.com/nusserstudios" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/default-blue.png" alt="Buy Me A Coffee" height="41" width="174"></a>

Made for Hacktoberfest, with ❤️ by NusserStudios.