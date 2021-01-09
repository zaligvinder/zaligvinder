(declare-const X String)
; 12/err
(assert (not (str.in.re X (str.to.re "12/err\x0a"))))
(check-sat)
