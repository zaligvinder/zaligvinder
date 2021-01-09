(declare-const X String)
; ^([0-1])*$
(assert (str.in.re X (re.++ (re.* (re.range "0" "1")) (str.to.re "\x0a"))))
; %3fc=UI2GmbHbacktrust\x2EcomSpediaReferer\x3ASubject\x3aHost\x3apasscorrect\x3B
(assert (not (str.in.re X (str.to.re "%3fc=UI2GmbHbacktrust.comSpediaReferer:Subject:Host:passcorrect;\x0a"))))
; ^([0-9]{4})-([0-1][0-9])-([0-3][0-9])\s([0-1][0-9]|[2][0-3]):([0-5][0-9]):([0-5][0-9])$
(assert (not (str.in.re X (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "--") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (re.union (re.++ (re.range "0" "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (str.to.re "::\x0a") (re.range "0" "1") (re.range "0" "9") (re.range "0" "3") (re.range "0" "9") (re.range "0" "5") (re.range "0" "9") (re.range "0" "5") (re.range "0" "9")))))
; iz=iMeshBar%3f\x2Fbar_pl\x2Fchk_bar\.fcgi
(assert (str.in.re X (str.to.re "iz=iMeshBar%3f/bar_pl/chk_bar.fcgi\x0a")))
; OS\x2F\d+User-Agent\x3AUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "OS/") (re.+ (re.range "0" "9")) (str.to.re "User-Agent:User-Agent:\x0a"))))
(check-sat)
