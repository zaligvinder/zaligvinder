(declare-const X String)
; \x5D\x2520\x5BPort_\d+TM_SEARCH3engineto=\x2Fezsb\s\x3A
(assert (not (str.in.re X (re.++ (str.to.re "]%20[Port_") (re.+ (re.range "0" "9")) (str.to.re "TM_SEARCH3engineto=/ezsb") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re ":\x0a")))))
; ^\d{3}-\d{2}-\d{4}$
(assert (str.in.re X (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; URLUBAgent%3fSchwindlerurl=Host\x3ahttpUser-Agent\x3A
(assert (str.in.re X (str.to.re "URLUBAgent%3fSchwindlerurl=Host:httpUser-Agent:\x0a")))
; DmInf\x5E\x0D\x0A\x0D\x0AAttached\x2Fbar_pl\x2Fchk\.fcgi
(assert (not (str.in.re X (str.to.re "DmInf^\x0d\x0a\x0d\x0aAttached/bar_pl/chk.fcgi\x0a"))))
(check-sat)
