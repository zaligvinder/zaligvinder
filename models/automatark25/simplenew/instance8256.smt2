(declare-const X String)
; dll\x3Fbadurl\x2Egrandstreetinteractive\x2Ecom
(assert (not (str.in.re X (str.to.re "dll?badurl.grandstreetinteractive.com\x0a"))))
(check-sat)
