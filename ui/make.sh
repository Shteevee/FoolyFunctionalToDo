
npx purs compile 'src\*.purs' 'bower_components\purescript-*\src\**\*.purs'
npx purs bundle -m Main --main Main 'output\*\*.js' > 'output\bundle.js'
node_modules/.bin/browserify output/bundle.js -o html/index.js