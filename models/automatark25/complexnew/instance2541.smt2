(declare-const X String)
; versionIDENTIFYstarted\x2EUser-Agent\x3A
(assert (not (str.in.re X (str.to.re "versionIDENTIFYstarted.User-Agent:\x0a"))))
; A-311www3\.addfreestats\.comAttachedX-Mailer\x3A
(assert (str.in.re X (str.to.re "A-311www3.addfreestats.comAttachedX-Mailer:\x13\x0a")))
; 32e3432ew+
(assert (not (str.in.re X (re.++ (str.to.re "32e3432e") (re.+ (str.to.re "w")) (str.to.re "\x0a")))))
; /\x2edxf([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.dxf") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; ((EE|EL|DE|PT)-?)?[0-9]{9}
(assert (not (str.in.re X (re.++ (re.opt (re.++ (re.union (str.to.re "EE") (str.to.re "EL") (str.to.re "DE") (str.to.re "PT")) (re.opt (str.to.re "-")))) ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
