(declare-const X String)
; Ts2\x2F\s+insert.*Host\x3aHELOHourssurvey\.asp\?nUserId=
(assert (not (str.in.re X (re.++ (str.to.re "Ts2/") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "insert") (re.* re.allchar) (str.to.re "Host:HELOHourssurvey.asp?nUserId=\x0a")))))
(check-sat)
