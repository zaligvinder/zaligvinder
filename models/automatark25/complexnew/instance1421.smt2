(declare-const X String)
; \/cgi-bin\/PopupV\s+insert.*Host\x3aHELOHourssurvey\.asp\?nUserId=
(assert (not (str.in.re X (re.++ (str.to.re "/cgi-bin/PopupV") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "insert") (re.* re.allchar) (str.to.re "Host:HELOHourssurvey.asp?nUserId=\x0a")))))
; /\x2egif([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.gif") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
(check-sat)
