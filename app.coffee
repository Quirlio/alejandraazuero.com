axis         = require 'axis'
rupture      = require 'rupture'
autoprefixer = require 'autoprefixer-stylus'
js_pipeline  = require 'js-pipeline'
css_pipeline = require 'css-pipeline'
dynamic_content = require 'dynamic-content'

module.exports =
  ignores: ['readme.md', '**/layout.*', '**/_*', '.gitignore', 'ship.*conf']

  extensions: [
    js_pipeline(files: ['assets/js/vendor/*.js','assets/js/cdn.coffee', 'assets/js/main.js']),
    css_pipeline(files: ['assets/css/vendor/*.css', 'assets/css/*.styl']),
    dynamic_content()
  ]

  stylus:
    use: [axis(), rupture(), autoprefixer()]
    sourcemap: true
    clean_urls: true

  'coffee-script':
    sourcemap: true

  jade:
    pretty: true
