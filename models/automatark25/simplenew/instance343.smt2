(declare-const X String)
; ^
(assert (not (str.in.re X (str.to.re "\x0a"))))
(check-sat)
