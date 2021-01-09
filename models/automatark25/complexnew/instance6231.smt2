(declare-const X String)
; LOGNetBusCookie\x3aToolbar
(assert (str.in.re X (str.to.re "LOGNetBusCookie:Toolbar\x0a")))
; /\x2fib2\x2f$/U
(assert (not (str.in.re X (str.to.re "//ib2//U\x0a"))))
(check-sat)
