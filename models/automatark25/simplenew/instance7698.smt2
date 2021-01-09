(declare-const X String)
; \x2Fcs\x2Fpop4\x2FA-Spywww\x2Eyoogee\x2Ecom
(assert (str.in.re X (str.to.re "/cs/pop4/A-Spywww.yoogee.com\x13\x0a")))
(check-sat)
