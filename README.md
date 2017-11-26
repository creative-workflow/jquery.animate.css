# jquery.animate.css [![Build Status](https://travis-ci.org/creative-workflow/jquery.animate.css.svg?branch=master)](https://travis-ci.org/creative-workflow/jquery.animate.css) [![Code Climate](https://codeclimate.com/github/creative-workflow/jquery.animate.css/badges/gpa.svg)](https://codeclimate.com/github/creative-workflow/jquery.animate.css)

This packages makes the usage of the beautiful [https://daneden.github.io/animate.css/](animate.css) very easyby bundling [animate-sass](https://github.com/tgdev/animate-sass) for selective animation style including and a jquery plugin for easy usage on your website.

## Installation
```bash
$ bower install jquery.animate.css

$ npm install jquery.animate.css  

$ yarn install jquery.animate.css  
```

## Selective animation including

You have to include the animate-sass into your sass sources and enable the animations you want to use later on your website.

A typical sass file looks like:
```sass
$enable-prefixes: true

$enable-fade-in-down: true
$enable-fade-out-right: true

@import "[path_to_bower_components]/animate.scss/src/animate"
```

Or if you which to load all animations:
```sass
$enable-prefixes: true

$enable-all-modules: true

@import "[path_to_bower_components]/animate.scss/src/animate"
```

## Usage javascript
```javascript
$('img').animateCss('bounce-in', 1000);
```


## methods
### animateCss: (animationCssClass, [duration=400], [complete=null])

Triggers an animate.css animation included by sass-animate.

### Parameter
#### animationCssClass
The animation that should be triggered.

_Note: You dont have to add the required 'animate' class._

### duration
Animation duration in mili seconds.

### complete
An optional callback function when animation finishes


### Dependencies
  * [jquery](https://jquery.com)
  * [animate.css](https://github.com/daneden/animate.css/)
  * [animate-sass](https://github.com/tgdev/animate-sass)
  * [sass]

### Resources
  * https://github.com/creative-workflow/jquery.animate.css
  * https://travis-ci.org/creative-workflow/jquery.animate.css
  * https://codeclimate.com/github/creative-workflow/jquery.animate.css
  * http://bower.io/search/?q=jquery.animate.css
  * https://www.npmjs.com/search?q=animateCss

### Authors

  [Tom Hanoldt](https://www.tomhanoldt.info)

# Contributing

Check out the [Contributing Guidelines](CONTRIBUTING.md)
