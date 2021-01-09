(declare-const X String)
; IPUSER-Host\x3AUser-Agent\x3A\x2Fsearchfast\x2F
(assert (not (str.in.re X (str.to.re "IPUSER-Host:User-Agent:/searchfast/\x0a"))))
; \x2Fbar_pl\x2Fchk\.fcgiHost\x3a
(assert (str.in.re X (str.to.re "/bar_pl/chk.fcgiHost:\x0a")))
; /\/setup\/[a-z0-9!-]{50}/Ui
(assert (str.in.re X (re.++ (str.to.re "//setup/") ((_ re.loop 50 50) (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "!") (str.to.re "-"))) (str.to.re "/Ui\x0a"))))
(check-sat)
