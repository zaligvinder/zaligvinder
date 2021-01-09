(declare-const X String)
; media\x2Edxcdirect\x2Ecom
(assert (not (str.in.re X (str.to.re "media.dxcdirect.com\x0a"))))
; Uin=encodernotification\x2Ftoolbar\x2FHost\x3AUser-Agent\x3A
(assert (str.in.re X (str.to.re "Uin=encodernotification\x13/toolbar/Host:User-Agent:\x0a")))
(check-sat)
