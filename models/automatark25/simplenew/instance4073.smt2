(declare-const X String)
; /*d(9,15)
(assert (str.in.re X (re.++ (re.* (str.to.re "/")) (str.to.re "d9,15\x0a"))))
(check-sat)
