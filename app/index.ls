$ ':text' .typing {
  start: (event, $elem) -> $elem.css 'background', '#fa0'
  stop: (event, $elem) -> $elem.css 'background', '#f00'
  delay: 4000
}
