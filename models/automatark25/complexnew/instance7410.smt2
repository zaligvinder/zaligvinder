(declare-const X String)
; \x2Fcommunicatortb[^\n\r]*\x2FGR.*Reportinfowhenu\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "/communicatortb") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "/GR") (re.* re.allchar) (str.to.re "Reportinfowhenu.com\x13\x0a"))))
; /\/html\/license_[0-9A-F]{550,}\.html$/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//html/license_.html/Ui\x0a") ((_ re.loop 550 550) (re.union (re.range "0" "9") (re.range "A" "F"))) (re.* (re.union (re.range "0" "9") (re.range "A" "F")))))))
; \/cgi-bin\/PopupV\s+insert.*Host\x3aHELOHourssurvey\.asp\?nUserId=
(assert (not (str.in.re X (re.++ (str.to.re "/cgi-bin/PopupV") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "insert") (re.* re.allchar) (str.to.re "Host:HELOHourssurvey.asp?nUserId=\x0a")))))
; com\dsearch\x2econduit\x2ecom\s+User-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "com") (re.range "0" "9") (str.to.re "search.conduit.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:\x0a"))))
; /\x2ettf([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.ttf") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
(check-sat)
