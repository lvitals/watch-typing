# watch-typing

This plugin is for watching the typing action whether the input is ready to be used or not.

## Install
	bower install watch-typing
	npm i
    echo 2344 > port
    npm start
## Usage

Include the script

```html
<script src="app.js"></script>
<script src="watch-typing.js"></script> 
```


Invoke the watchTyping method

```javascript
$(':text').watchTyping( options );
```


 `watch-typing` takes three arguments

* `start` - This function gets fired when user press the key.
* `stop` - This function gets fired after a period of time when user release the key.
* `delay` - This number determines the period from user releasing the key to firing the stop function. 


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
When pressing the key, the textarea turns orange. Then waiting 0.4 seconds after user release the key,the testarea turns red.


## Reference

    https://github.com/narfdotpl/jquery-typing
    https://github.com/dennyferra/TypeWatch

## LICENSE(MIT)

	Copyright (C) 2014 Tien-Hao Chang darby@mail.ncku.edu.tw

	Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the righttp:// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

	The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
