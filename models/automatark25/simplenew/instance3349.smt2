(declare-const X String)
; Stealthwww\x2Emyarmory\x2Ecomresultsmaster\x2Ecom
(assert (not (str.in.re X (str.to.re "Stealthwww.myarmory.comresultsmaster.com\x13\x0a"))))
(check-sat)
