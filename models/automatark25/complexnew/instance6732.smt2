(declare-const X String)
; LoggerovplUser-Agent\x3At=searchreslt\x7D\x7BSysuptime\x3A
(assert (str.in.re X (str.to.re "LoggerovplUser-Agent:t=searchreslt}{Sysuptime:\x0a")))
; Send=\s+User-Agent\x3A\s+LoginHost\x3a\x2Ffriendship\x2Femail_thank_you\?Host\x3aCenterSubject\x3A
(assert (str.in.re X (re.++ (str.to.re "Send=") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "LoginHost:/friendship/email_thank_you?Host:CenterSubject:\x0a"))))
; www\x2Eweepee\x2Ecom\d+metaresults\.copernic\.com\s+
(assert (not (str.in.re X (re.++ (str.to.re "www.weepee.com\x1b") (re.+ (re.range "0" "9")) (str.to.re "metaresults.copernic.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a")))))
; -i%3fUser-Agent\x3Awww\x2eproventactics\x2ecom
(assert (str.in.re X (str.to.re "-i%3fUser-Agent:www.proventactics.com\x0a")))
(check-sat)
