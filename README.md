# jquery.animate.css [![Build Status](https://travis-ci.org/creative-workflow/jquery.animate.css.svg?branch=master)](https://travis-ci.org/creative-workflow/jquery.animate.css) [![Code Climate](https://codeclimate.com/github/creative-workflow/jquery.animate.css/badges/gpa.svg)](https://codeclimate.com/github/creative-workflow/jquery.animate.css)

This package makes the usage of the beautiful [https://daneden.github.io/animate.css/](animate.css) very easy by bundling [animate-sass](https://github.com/tgdev/animate-sass) for selective animation style including and a jQuery plugin for easy usage on your website.

## Installation
```bash
$ bower install jquery.animate.css

or

$ npm install jquery.animate.css
```

## Sass integration

You have to include the animate-sass into your sass sources and enable the animations you want to use later on your website.

A typical sass file looks like:
```sass
//$use-all: true

$use-bounce: true

@import "[path_to_bower_components]/animate-sass/animate"
```

_Note: For all configurations look at the file [path_to_bower_components]/animate-sass/helpers/_settings.scss_

### jQuery integration

Just load the javascript file  `[path_to_bower_components]/jquery.animate.css/dist/jquery.animate.css.js`.

## Usage javascript
```javascript
$('img').animateCss('bounceOut', 500, function(){
  $('img').animateCss('bounceIn', 500);
});
```

## methods
### animateCss: (animateCssAnimation, [duration=400], [complete=null])

Triggers an animate.css animation included by sass-animate.

### Parameter
#### animateCssAnimation
The animation that should be triggered.

_Note: You don't have to add the required 'animate' class._

### duration
Animation duration in milli seconds.

### complete
An optional callback function when animation finishes


### Dependencies
  * [jquery](https://jquery.com)
  * [animate.css](https://github.com/daneden/animate.css/)
  * [animate-sass](https://github.com/tgdev/animate-sass)
  * [sass](http://sass-lang.com/)

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
