(function() {
  jQuery.fn.extend({
    animateCss: function(animationCssClass, duration, complete) {
      return this.each(function() {
        var $this, durationCss, durationSeconds;
        durationSeconds = duration / 1000;
        durationCss = (durationSeconds + "s").replace(',', '.');
        $this = $(this);
        $this.css("animation-duration", durationCss).addClass("animate " + animationCssClass);
        return setTimeout(function() {
          $this.removeClass("animate " + animationCssClass);
          if (complete) {
            return complete($this);
          }
        }, duration);
      });
    }
  });

}).call(this);
