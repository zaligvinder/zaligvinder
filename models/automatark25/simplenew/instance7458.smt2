(declare-const X String)
; freeIPaddrsRunner\+The\+password\+is\x3A
(assert (not (str.in.re X (str.to.re "freeIPaddrsRunner+The+password+is:\x0a"))))
(check-sat)
