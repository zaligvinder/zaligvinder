(declare-const X String)
; media\x2Etop-banners\x2Ecom
(assert (str.in.re X (str.to.re "media.top-banners.com\x0a")))
(check-sat)
