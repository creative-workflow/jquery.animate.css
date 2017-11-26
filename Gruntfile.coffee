'use strict'

module.exports = (grunt) ->
  grunt.initConfig
    pkg: grunt.file.readJSON 'package.json'
    includes:
      files:
        src: ['src/jquery.animate.css.coffee']
        dest: 'tmp'
        flatten: true
        cwd: '.'
        options:
          silent: true
          banner: '# <% includes.files.dest %>'
    coffee:
      compile:
        files:
          'dist/jquery.animate.css.js': 'tmp/jquery.animate.css.coffee'
    coffeelint:
      app:
        [ 'src/*.coffee' ]
    uglify:
      options:
        banner: '/*! <%= pkg.name %> v<%= pkg.version %> | <%= pkg.license %> */\n'
      build:
        files: 'dist/jquery.animate.css.min.js': 'dist/jquery.animate.css.js'
    compress:
      main:
        options:
          mode: 'gzip'
        files: [ {
          src: [ 'dist/jquery.animate.css.min.js' ]
          dest: 'dist/jquery.animate.css.js.gz'
        }]
    watch:
      options: livereload: true
      files: 'src/*.coffee'
      tasks: 'default'

  # Loading dependencies
  for key of grunt.file.readJSON('package.json').devDependencies
    if key != 'grunt' and key.indexOf('grunt') == 0
      grunt.loadNpmTasks key

  grunt.registerTask 'default', [
    'includes'
    'coffeelint'
    'coffee'
    'uglify'
    'compress'
  ]

  grunt.registerTask 'test', [
    'includes'
    'coffee'
  ]
