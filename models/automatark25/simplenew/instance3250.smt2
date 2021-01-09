(declare-const X String)
; Uin=encodernotification\x2Ftoolbar\x2FHost\x3AUser-Agent\x3A
(assert (str.in.re X (str.to.re "Uin=encodernotification\x13/toolbar/Host:User-Agent:\x0a")))
(check-sat)
