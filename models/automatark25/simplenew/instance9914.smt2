(declare-const X String)
; \x2Fbar_pl\x2Fb\.fcgiHost\x3AHost\x3AClass\x2Ftoolbar\x2Fico\x2FGoogleLogsencoderserver
(assert (str.in.re X (str.to.re "/bar_pl/b.fcgiHost:Host:Class/toolbar/ico/GoogleLogsencoderserver\x0a")))
(check-sat)
