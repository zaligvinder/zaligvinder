(declare-const X String)
; InformationHost\x3Abadurl\x2Egrandstreetinteractive\x2Ecom
(assert (str.in.re X (str.to.re "InformationHost:badurl.grandstreetinteractive.com\x0a")))
(check-sat)
