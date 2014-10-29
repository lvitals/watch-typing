# watch-typing

	This plugin is for watching the typing action whether the input is ready to be used or not.

## Install

 	Installing via bower
 
 	`bower install watch-typing`

	Installing via github

 	`git clone git@github.com:mbilab/watch-typing.git`
	

## Usage

	Include script after the jQuery library.

	```html
		<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
		<script src="watch-typing.js"></script> 
	```


	Invoke the watchTyping method

	```javascript
		$(':text').watchTyping( options );
	```


 	`watch-typing` takes three arguments

	* `start` - This function gets fired when user press the key.
	* `stop`  - This function gets fired after a period of time when user release the key.
	* `delay` - The period from user releasing the key to invoking the stop function. 


####example:

```javascript
$(':text').watchTyping({
  start: function(event, $elem){
    return $elem.css('background', 'orange');
  },
  stop: function(event, $elem){
    return $elem.css('background', 'red');
  },
  delay: 400
});
```

When pressing the key, the textarea turns orange. 
0.4 seconds later, the testarea turns red.

## DEMO

	[Try it](http://merry.ee.ncku.edu.tw/~yuting/watch-typing/)


## Reference

    https://github.com/narfdotpl/jquery-typing
    https://github.com/dennyferra/TypeWatch

## LICENSE(MIT)

	Copyright (C) 2014 Tien-Hao Chang darby@mail.ncku.edu.tw

