(declare-const X String)
; LOGNetBusCookie\x3aToolbar
(assert (not (str.in.re X (str.to.re "LOGNetBusCookie:Toolbar\x0a"))))
(check-sat)
