(declare-const X String)
; u=with\u{3A}HBand,Deathhoroscope2
(assert (not (str.in_re X (str.to_re "u=with:HBand,Deathhoroscope2\u{a}"))))
(check-sat)
