(declare-const X String)
; updates\x5D\x2520\x5BPort_NETObserve
(assert (str.in.re X (str.to.re "updates]%20[Port_NETObserve\x0a")))
(check-sat)
