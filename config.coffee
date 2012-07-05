exports.config =
  # See http://brunch.readthedocs.org/en/latest/config.html for documentation.
  # TODO - fix test framework
  files:
    javascripts:
      defaultExtension: 'coffee'
      joinTo:
        'javascripts/app.js': /^app/
        'javascripts/vendor.js': /^vendor/
        'test/javascripts/test.js': /^test(\/|\\)(?!vendor)/
        'test/javascripts/test-vendor.js': /^test(\/|\\)(?=vendor)/
      order:
        before: [
          'vendor/scripts/zepto-1.0rc1.js'
          'vendor/scripts/underscore-1.3.3.js'
          'vendor/scripts/backbone-0.9.2.js'
        ]

    stylesheets:
      defaultExtension: 'scss'
      joinTo:
        'stylesheets/app.css': /^(app|vendor)/
        'test/stylesheets/test.css': /^test/
      order:
        before: ['vendor/styles/normalize.css']

    templates:
      defaultExtension: 'eco'
      joinTo: 'javascripts/app.js'

  framework: 'backbone'
  server:
    port: 3334