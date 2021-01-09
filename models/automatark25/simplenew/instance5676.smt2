(declare-const X String)
; www\x2Ecameup\x2EcomNetTracker
(assert (str.in.re X (str.to.re "www.cameup.com\x13NetTracker\x0a")))
(check-sat)
