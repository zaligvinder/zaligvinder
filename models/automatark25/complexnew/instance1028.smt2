(declare-const X String)
; wwwHost\x3aRobertVersionspyblini\x2Eini
(assert (str.in.re X (str.to.re "wwwHost:RobertVersionspyblini.ini\x0a")))
; \swww\.fast-finder\.com[^\n\r]*\x2Fbar_pl\x2Fchk\.fcgi\d+Toolbar
(assert (str.in.re X (re.++ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.fast-finder.com") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "/bar_pl/chk.fcgi") (re.+ (re.range "0" "9")) (str.to.re "Toolbar\x0a"))))
(check-sat)
