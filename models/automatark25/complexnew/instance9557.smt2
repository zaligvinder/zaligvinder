(declare-const X String)
; ^0{0,1}[1-9]{1}[0-9]{2}[\s]{0,1}[\-]{0,1}[\s]{0,1}[1-9]{1}[0-9]{6}$
(assert (str.in.re X (re.++ (re.opt (str.to.re "0")) ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (str.to.re "-")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "\x0a"))))
; versionIDENTIFYstarted\x2EUser-Agent\x3A
(assert (str.in.re X (str.to.re "versionIDENTIFYstarted.User-Agent:\x0a")))
; /\x2eru\/\w+\?\d$/miU
(assert (not (str.in.re X (re.++ (str.to.re "/.ru/") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "?") (re.range "0" "9") (str.to.re "/miU\x0a")))))
; url=\d+Host\x3A.*backtrust\x2Ecomv\x2ELoginHost\x3a\x2Ffriendship\x2Femail_thank_you\?
(assert (str.in.re X (re.++ (str.to.re "url=") (re.+ (re.range "0" "9")) (str.to.re "Host:") (re.* re.allchar) (str.to.re "backtrust.comv.LoginHost:/friendship/email_thank_you?\x0a"))))
; (\*\*)(.+)(\*\*)
(assert (str.in.re X (re.++ (str.to.re "**") (re.+ re.allchar) (str.to.re "**\x0a"))))
(check-sat)
