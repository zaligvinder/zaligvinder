(declare-const X String)
; LoginHost\u{3a}\u{2F}friendship\u{2F}email_thank_you\?
(assert (str.in_re X (str.to_re "LoginHost:/friendship/email_thank_you?\u{a}")))
; metaresults\.copernic\.comServer\u{0}
(assert (not (str.in_re X (str.to_re "metaresults.copernic.comServer\u{0}\u{a}"))))
; /\u{2e}qt([\?\u{5c}\u{2f}]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.qt") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; \u{22}StarLogger\u{22}User-Agent\u{3A}JMailUser-Agent\u{3A}
(assert (not (str.in_re X (str.to_re "\u{22}StarLogger\u{22}User-Agent:JMailUser-Agent:\u{a}"))))
(check-sat)
