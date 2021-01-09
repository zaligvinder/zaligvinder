(declare-const X String)
; for\x2Fproducts\x2Fspyblocs\x2FHost\x3Aocllceclbhs\x2fgth
(assert (str.in.re X (str.to.re "for/products/spyblocs/\x13Host:ocllceclbhs/gth\x0a")))
(check-sat)
