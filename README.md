Curriculum Vitae / Resume publisher
=====

Forked from / inspired by:
* http://bitlyfied.com/2013/03/14/markdown-cv/
* https://mszep.github.io/pandoc_resume/

## Install

```
brew cask install wkhtmltopdf
brew install pandoc
```

## Build

Edit the markdown cv.md.

Make the html and pdf versions with:

```
make adam-berenzweig-cv.pdf index.html
```

Push to the `gh-pages` branch to publish the html to:

http://adamberenzweig.github.io/cv/
