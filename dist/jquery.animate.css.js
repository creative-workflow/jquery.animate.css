(function() {
  jQuery.fn.extend({
    animateCss: function(animationCssClass, duration, complete) {
      return this.each(function() {
        var durationSeconds;
        durationSeconds = duration / 1000;
        $(this).removeClass(animationCssClass).css("animation-duration", durationSeconds + 's').addClass("animate " + animationCssClass);
        if (complete) {
          return setTimeout(complete, duration);
        }
      });
    }
  });

}).call(this);
