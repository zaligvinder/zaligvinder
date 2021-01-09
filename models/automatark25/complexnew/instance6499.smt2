(declare-const X String)
; Host\x3A\s+\x2Ftoolbar\x2Fico\x2F\dencoderserverreport\<\x2Ftitle\>
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/toolbar/ico/") (re.range "0" "9") (str.to.re "encoderserverreport</title>\x0a"))))
; \/cgi-bin\/PopupV\s+insert.*Host\x3aHELOHourssurvey\.asp\?nUserId=
(assert (str.in.re X (re.++ (str.to.re "/cgi-bin/PopupV") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "insert") (re.* re.allchar) (str.to.re "Host:HELOHourssurvey.asp?nUserId=\x0a"))))
(check-sat)
