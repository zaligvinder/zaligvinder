(declare-const X String)
; Subject\x3A.*Host\x3A\d+iz=iMeshBar%3f\x2Fbar_pl\x2Fchk_bar\.fcgi
(assert (str.in.re X (re.++ (str.to.re "Subject:") (re.* re.allchar) (str.to.re "Host:") (re.+ (re.range "0" "9")) (str.to.re "iz=iMeshBar%3f/bar_pl/chk_bar.fcgi\x0a"))))
(check-sat)
