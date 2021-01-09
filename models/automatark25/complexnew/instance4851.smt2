(declare-const X String)
; LoginHost\x3a\x2Ffriendship\x2Femail_thank_you\?
(assert (str.in.re X (str.to.re "LoginHost:/friendship/email_thank_you?\x0a")))
; metaresults\.copernic\.comServer\x00
(assert (not (str.in.re X (str.to.re "metaresults.copernic.comServer\x00\x0a"))))
; /\x2eqt([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.qt") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; \x22StarLogger\x22User-Agent\x3AJMailUser-Agent\x3A
(assert (not (str.in.re X (str.to.re "\x22StarLogger\x22User-Agent:JMailUser-Agent:\x0a"))))
(check-sat)
