(declare-const X String)
; url=\d+Host\x3A.*backtrust\x2Ecomv\x2ELoginHost\x3a\x2Ffriendship\x2Femail_thank_you\?
(assert (not (str.in.re X (re.++ (str.to.re "url=") (re.+ (re.range "0" "9")) (str.to.re "Host:") (re.* re.allchar) (str.to.re "backtrust.comv.LoginHost:/friendship/email_thank_you?\x0a")))))
; (BE-?)?0?[0-9]{9}
(assert (str.in.re X (re.++ (re.opt (re.++ (str.to.re "BE") (re.opt (str.to.re "-")))) (re.opt (str.to.re "0")) ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re "\x0a"))))
; /logo\.png\x3f(sv\x3d\d{1,3})?\x26tq\x3d.*?SoSEU/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/logo.png?") (re.opt (re.++ (str.to.re "sv=") ((_ re.loop 1 3) (re.range "0" "9")))) (str.to.re "&tq=") (re.* re.allchar) (str.to.re "SoSEU/smiU\x0a")))))
; upgrade\x2Eqsrch\x2Einfo[^\n\r]*dcww\x2Edmcast\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "upgrade.qsrch.info") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "dcww.dmcast.com\x0a")))))
(check-sat)
