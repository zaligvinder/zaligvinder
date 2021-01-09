(declare-const X String)
; Explorer\x2Fsto=notificationfind
(assert (not (str.in.re X (str.to.re "Explorer/sto=notification\x13find\x0a"))))
(check-sat)
