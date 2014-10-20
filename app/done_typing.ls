$ <- -> it jQuery
plugin = \watchTyping
$.fn[plugin] = (opt) ->
  opt = $.extend {}, $.fn[plugin].dft, opt
  timer = 0
  <-! @each
  $el = $ @
  .blur !-> stop-typing it, 0
  .keydown !-> opt.start it, $el if opt.start
  .keyup !-> stop-typing it, opt.delay

  stop-typing = (event, delay) !->
    clear-timeout timer
    timer := set-timeout (-> opt.stop event, $el if opt.stop), delay

$.fn[plugin].dft = delay: 400

# vi:et
