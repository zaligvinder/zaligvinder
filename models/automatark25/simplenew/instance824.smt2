(declare-const X String)
; SecureNet\sHost\x3AX-Mailer\x3Aas\x2Estarware\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "SecureNet") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Host:X-Mailer:\x13as.starware.com\x0a"))))
(check-sat)
