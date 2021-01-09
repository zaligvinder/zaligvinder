(declare-const X String)
; \x2Fbar_pl\x2Fchk\.fcgiHWAEcom\x2Findex\.php\?tpid=
(assert (not (str.in.re X (str.to.re "/bar_pl/chk.fcgiHWAEcom/index.php?tpid=\x0a"))))
(check-sat)
