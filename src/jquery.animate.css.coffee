
jQuery.fn.extend
  animateCss: (animationCssClass, duration, complete) ->
    @each () ->
      durationSeconds = (duration / 1000)
      durationCss     = "#{durationSeconds}s".replace(',', '.')
      $this = $(this)
      $this
        .css("animation-duration", durationCss)
        .addClass("animate #{animationCssClass}")

      setTimeout(->
        $this.removeClass("animate #{animationCssClass}")
        complete($this) if complete
      , duration)
