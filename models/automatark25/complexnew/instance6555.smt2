(declare-const X String)
; SecureNet\sHost\x3AX-Mailer\x3Aas\x2Estarware\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "SecureNet") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Host:X-Mailer:\x13as.starware.com\x0a"))))
; (^[a-zA-Z0-9]+://)
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "://")))))
; Subject\x3ALOGX-Mailer\x3a
(assert (str.in.re X (str.to.re "Subject:LOGX-Mailer:\x13\x0a")))
; ((079)|(078)|(077)){1}[0-9]{7}
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (re.union (str.to.re "079") (str.to.re "078") (str.to.re "077"))) ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a")))))
; wjpropqmlpohj\x2flo\d+Host\x3AUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "wjpropqmlpohj/lo") (re.+ (re.range "0" "9")) (str.to.re "Host:User-Agent:\x0a"))))
(check-sat)
