(declare-const X String)
; /#([1-9]){2}([1-9]){2}([1-9]){2}/
(assert (str.in.re X (re.++ (str.to.re "/#") ((_ re.loop 2 2) (re.range "1" "9")) ((_ re.loop 2 2) (re.range "1" "9")) ((_ re.loop 2 2) (re.range "1" "9")) (str.to.re "/\x0a"))))
(check-sat)
