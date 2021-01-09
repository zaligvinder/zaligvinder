(declare-const X String)
; (\bR(\.|)R(\.|)|RURAL\s{0,}(ROUTE|RT(\.|)))\s{0,}\d{1,}(,|)\s{1,}\bBOX\s{0,}\d
(assert (not (str.in.re X (re.++ (re.union (str.to.re "R.R.") (re.++ (str.to.re "RURAL") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "R") (re.union (str.to.re "OUTE") (str.to.re "T.")))) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.+ (re.range "0" "9")) (str.to.re ",") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "BOX") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.range "0" "9") (str.to.re "\x0a")))))
; TOOLBARX-Mailer\x3a+dist\x2Eatlas\x2Dia\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "TOOLBARX-Mailer") (re.+ (str.to.re ":")) (str.to.re "dist.atlas-ia.com\x0a"))))
; filename=\x22\s+www\x2Epeer2mail\x2Ecom.*LOG
(assert (str.in.re X (re.++ (str.to.re "filename=\x22") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.peer2mail.com") (re.* re.allchar) (str.to.re "LOG\x0a"))))
; \b[1-9]\b
(assert (not (str.in.re X (re.++ (re.range "1" "9") (str.to.re "\x0a")))))
; Contact\d+Host\x3A[^\n\r]*User-Agent\x3AHost\x3aMailHost\x3aMSNLOGOVN
(assert (str.in.re X (re.++ (str.to.re "Contact") (re.+ (re.range "0" "9")) (str.to.re "Host:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "User-Agent:Host:MailHost:MSNLOGOVN\x0a"))))
(check-sat)
