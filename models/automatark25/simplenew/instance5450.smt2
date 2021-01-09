(declare-const X String)
; Pleasetvshowticketsmedia\x2Edxcdirect\x2Ecom\x2Fbar_pl\x2Fchk\.fcgi
(assert (str.in.re X (str.to.re "Pleasetvshowticketsmedia.dxcdirect.com/bar_pl/chk.fcgi\x0a")))
(check-sat)
