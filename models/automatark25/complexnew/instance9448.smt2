(declare-const X String)
; [1-9][0-9]
(assert (not (str.in.re X (re.++ (re.range "1" "9") (re.range "0" "9") (str.to.re "\x0a")))))
; Pleasetvshowticketsmedia\x2Edxcdirect\x2Ecom\x2Fbar_pl\x2Fchk\.fcgi
(assert (not (str.in.re X (str.to.re "Pleasetvshowticketsmedia.dxcdirect.com/bar_pl/chk.fcgi\x0a"))))
; /[a-z0-9]{32}\.jar/
(assert (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 32 32) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".jar/\x0a"))))
(check-sat)
