(declare-const X String)
; /^\/f\/1\d{9}\/\d{9,10}(\/\d)+$/U
(assert (str.in.re X (re.++ (str.to.re "//f/1") ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re "/") ((_ re.loop 9 10) (re.range "0" "9")) (re.+ (re.++ (str.to.re "/") (re.range "0" "9"))) (str.to.re "/U\x0a"))))
; /filename=[^\n]*\x2eogx/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".ogx/i\x0a")))))
; [a-zA-Z0-9]*
(assert (not (str.in.re X (re.++ (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "\x0a")))))
(check-sat)
