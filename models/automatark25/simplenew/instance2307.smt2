(declare-const X String)
; \x2Fbar_pl\x2Fchk_bar\.fcgiUser-Agent\x3A
(assert (str.in.re X (str.to.re "/bar_pl/chk_bar.fcgiUser-Agent:\x0a")))
(check-sat)
