

jQuery.fn.extend
  animateCss: (animationCssClass, duration, complete) ->
    @each () ->
      durationSeconds = (duration / 1000)

      $(this).removeClass(animationCssClass)
        .css("animation-duration", durationSeconds + 's')
        .addClass("animate #{animationCssClass}")

      setTimeout(complete, duration) if complete
