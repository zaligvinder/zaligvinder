(declare-const X String)
; Ready\s+Client\s+MyBrowserHost\x3asecurityon\x3AHost\x3ARedirector\x22ServerHost\x3AX-Mailer\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Ready") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Client") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "MyBrowserHost:securityon:Host:Redirector\x22ServerHost:X-Mailer:\x13\x0a")))))
; Explorer\x2Fsto=notificationfind
(assert (str.in.re X (str.to.re "Explorer/sto=notification\x13find\x0a")))
; /^(\x00\x00\x00\x00|.{4}(\x00\x00\x00\x00|.{12}))/s
(assert (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "\x00\x00\x00\x00") (re.++ ((_ re.loop 4 4) re.allchar) (re.union (str.to.re "\x00\x00\x00\x00") ((_ re.loop 12 12) re.allchar)))) (str.to.re "/s\x0a"))))
(check-sat)
