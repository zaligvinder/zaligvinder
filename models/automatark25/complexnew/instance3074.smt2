(declare-const X String)
; Host\x3A\.exePass-OnHost\x3A\.exe\x2Ftoolbar\x2F
(assert (not (str.in.re X (str.to.re "Host:.exePass-OnHost:.exe/toolbar/\x0a"))))
; ^\d{5}(\-)(\d{3})?$
(assert (str.in.re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "-") (re.opt ((_ re.loop 3 3) (re.range "0" "9"))) (str.to.re "\x0a"))))
; Contact\d+Host\x3A[^\n\r]*User-Agent\x3AHost\x3aMailHost\x3aMSNLOGOVN
(assert (not (str.in.re X (re.++ (str.to.re "Contact") (re.+ (re.range "0" "9")) (str.to.re "Host:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "User-Agent:Host:MailHost:MSNLOGOVN\x0a")))))
; Ready\s+Eye.*http\x3A\x2F\x2Fsupremetoolbar
(assert (str.in.re X (re.++ (str.to.re "Ready") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Eye") (re.* re.allchar) (str.to.re "http://supremetoolbar\x0a"))))
; \x2APORT3\x2A\s+Warez.*X-Mailer\x3ASubject\x3AKEY=
(assert (not (str.in.re X (re.++ (str.to.re "*PORT3*") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Warez") (re.* re.allchar) (str.to.re "X-Mailer:\x13Subject:KEY=\x0a")))))
(check-sat)
