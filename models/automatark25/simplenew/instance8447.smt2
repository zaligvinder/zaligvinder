(declare-const X String)
; Iterenetbadurl\x2Egrandstreetinteractive\x2Ecom
(assert (not (str.in.re X (str.to.re "Iterenetbadurl.grandstreetinteractive.com\x0a"))))
(check-sat)
