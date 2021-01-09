(declare-const X String)
; \x2Fbar_pl\x2Fchk_bar\.fcgiTrojanHost\x3A
(assert (not (str.in.re X (str.to.re "/bar_pl/chk_bar.fcgiTrojanHost:\x0a"))))
(check-sat)
