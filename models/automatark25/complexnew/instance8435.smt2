(declare-const X String)
; /"(\\["\\]|[^"])*("|$)|(\\["\\]|[^\s"])+/g
(assert (not (str.in.re X (re.union (re.++ (str.to.re "/\x22") (re.* (re.union (re.++ (str.to.re "\x5c") (re.union (str.to.re "\x22") (str.to.re "\x5c"))) (re.comp (str.to.re "\x22")))) (str.to.re "\x22")) (re.++ (re.+ (re.union (re.++ (str.to.re "\x5c") (re.union (str.to.re "\x22") (str.to.re "\x5c"))) (str.to.re "\x22") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/g\x0a"))))))
; /[a-zA-Z0-9]\/[a-f0-9]{5}\.swf[\x22\x27]/
(assert (str.in.re X (re.++ (str.to.re "/") (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")) (str.to.re "/") ((_ re.loop 5 5) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re ".swf") (re.union (str.to.re "\x22") (str.to.re "'")) (str.to.re "/\x0a"))))
; /filename=[^\n]*\x2em4a/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".m4a/i\x0a")))))
(check-sat)
