(declare-const X String)
; /^\/blog\/[a-zA-Z0-9]{3}\.(g(3|e)d|mm|vru|be|nut)$/U
(assert (not (str.in_re X (re.++ (str.to_re "//blog/") ((_ re.loop 3 3) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to_re ".") (re.union (re.++ (str.to_re "g") (re.union (str.to_re "3") (str.to_re "e")) (str.to_re "d")) (str.to_re "mm") (str.to_re "vru") (str.to_re "be") (str.to_re "nut")) (str.to_re "/U\u{a}")))))
(check-sat)
