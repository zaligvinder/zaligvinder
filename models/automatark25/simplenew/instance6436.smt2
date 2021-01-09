(declare-const X String)
; ppcdomain\x2Eco\x2EukBasic
(assert (not (str.in.re X (str.to.re "ppcdomain.co.ukBasic\x0a"))))
(check-sat)
