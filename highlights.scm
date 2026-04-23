(key) @function

; Comments
((generic (key) @k (value))
   @comment
   (#eq? @k "#"))

; Todo
((generic (key) @keyword (value))
   (#match? @keyword "^(?i)(todo|done)$"))
