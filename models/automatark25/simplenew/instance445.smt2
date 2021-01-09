(declare-const X String)
; /^\/f\/1\d{9}\/\d{9,10}(\/\d)+$/U
(assert (not (str.in.re X (re.++ (str.to.re "//f/1") ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re "/") ((_ re.loop 9 10) (re.range "0" "9")) (re.+ (re.++ (str.to.re "/") (re.range "0" "9"))) (str.to.re "/U\x0a")))))
(check-sat)
