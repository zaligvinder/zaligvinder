(declare-const X String)
; (a|A)
(assert (not (str.in.re X (re.++ (re.union (str.to.re "a") (str.to.re "A")) (str.to.re "\x0a")))))
(check-sat)
