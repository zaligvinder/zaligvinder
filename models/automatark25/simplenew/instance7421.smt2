(declare-const X String)
; /^\/blog\/[a-zA-Z0-9]{3}\.(g(3|e)d|mm|vru|be|nut)$/U
(assert (str.in.re X (re.++ (str.to.re "//blog/") ((_ re.loop 3 3) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re ".") (re.union (re.++ (str.to.re "g") (re.union (str.to.re "3") (str.to.re "e")) (str.to.re "d")) (str.to.re "mm") (str.to.re "vru") (str.to.re "be") (str.to.re "nut")) (str.to.re "/U\x0a"))))
(check-sat)
