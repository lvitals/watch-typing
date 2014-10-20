jQuery |> ($) <-
$.fn.typing = (options) ->
	this.each (i, elem) !->
		listenToTyping elem, options

listenToTyping = (elem, options) ->
	settings = $.extend start:null stop:null delay:400
		,options

	$elem = $(elem)
	startTyping = (event) !->
		if settings.start then settings.start event, $elem

	stopTyping = (event, delay) !->
		clearTimeout delayedCallback
		delayedCallback = setTimeout -> if settings.stop then settings.stop event, $elem
			,if delay >= 0 then delay else settings.delay

	$elem.keydown startTyping
	$elem.keyup stopTyping
	$elem.blur (event) !-> stopTyping event,0


