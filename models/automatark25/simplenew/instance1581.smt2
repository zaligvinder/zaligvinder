(declare-const X String)
; www\x2Eweepee\x2Ecomhttp\x0D\x0ACurrentOwner\x3A
(assert (str.in.re X (str.to.re "www.weepee.com\x1bhttp\x0d\x0aCurrentOwner:\x0a")))
(check-sat)
