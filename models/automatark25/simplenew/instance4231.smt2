(declare-const X String)
; welcomeforToolbarHost\x3A
(assert (not (str.in.re X (str.to.re "welcomeforToolbarHost:\x0a"))))
(check-sat)
