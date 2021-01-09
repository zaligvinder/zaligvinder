(declare-const X String)
; u=with\x3AHBand,Deathhoroscope2
(assert (not (str.in.re X (str.to.re "u=with:HBand,Deathhoroscope2\x0a"))))
(check-sat)
