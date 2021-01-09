(declare-const X String)
; Host\x3a[^\n\r]*pgwtjgxwthx\x2fbyb\.xky[^\n\r]*source%3Dultrasearch136%26campaign%3Dsnap
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "pgwtjgxwthx/byb.xky") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "source%3Dultrasearch136%26campaign%3Dsnap\x0a")))))
; \x2Fbar_pl\x2Fchk_bar\.fcgiTrojanHost\x3A
(assert (str.in.re X (str.to.re "/bar_pl/chk_bar.fcgiTrojanHost:\x0a")))
; \x2APORT2\x2Acdpnode=Host\x3A
(assert (str.in.re X (str.to.re "*PORT2*cdpnode=Host:\x0a")))
(check-sat)
