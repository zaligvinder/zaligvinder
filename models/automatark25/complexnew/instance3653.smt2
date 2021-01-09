(declare-const X String)
; /\x2emim([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.mim") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; securityOmFkbWluADROARad\x2Emokead\x2Ecom\x3C\x2Fchat\x3E
(assert (str.in.re X (str.to.re "securityOmFkbWluADROARad.mokead.com</chat>\x0a")))
; cyber@yahoo\x2Ecomconfig\x2E180solutions\x2Ecom
(assert (not (str.in.re X (str.to.re "cyber@yahoo.comconfig.180solutions.com\x0a"))))
; Host\x3Ahjhgquqssq\x2fpjmonHost\x3AHost\x3AA-311byName=Your\+Host\+is\x3A
(assert (not (str.in.re X (str.to.re "Host:hjhgquqssq/pjmonHost:Host:A-311byName=Your+Host+is:\x0a"))))
; Send=\s+User-Agent\x3A\s+LoginHost\x3a\x2Ffriendship\x2Femail_thank_you\?Host\x3aCenterSubject\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Send=") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "LoginHost:/friendship/email_thank_you?Host:CenterSubject:\x0a")))))
(check-sat)
