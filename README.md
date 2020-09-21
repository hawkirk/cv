# CV

https://baileywickham.com/cv/

Resume rewritten in html to allow more control. Template taken from [clemente.io](https://clemente.io).

Uses `yarn` for package management. 

Use `yarn install` to install packages, `yarn run build` to compile the css and generate the pdf, or `yarn sass` to just generate the css. I think you could use github's built in jekyll support to compile the sass for you, but that may be more trouble than it's worth. 

The pdf of the site is generated using the `phantomjs`, a headless webkit browser. It is installed and ran in a docker container.

## License

[MIT](docs/LICENSE.txt)
