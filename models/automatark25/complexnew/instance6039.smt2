(declare-const X String)
; ^0?(5[024])(\-)?\d{7}$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "0")) (re.opt (str.to.re "-")) ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a5") (re.union (str.to.re "0") (str.to.re "2") (str.to.re "4"))))))
; BV_SessionID=@@@@0106700396.1206001747@@@@&BV_EngineID=ccckadedjddehggcefecehidfhfdflg.0
(assert (not (str.in.re X (re.++ (str.to.re "BV_SessionID=@@@@0106700396") re.allchar (str.to.re "1206001747@@@@&BV_EngineID=ccckadedjddehggcefecehidfhfdflg") re.allchar (str.to.re "0\x0a")))))
; url=http\x3A\s+jsp[^\n\r]*serverHOST\x3ASubject\x3Ai\-femdom\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "url=http:\x1b") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "jsp") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "serverHOST:Subject:i-femdom.com\x0a"))))
(check-sat)
