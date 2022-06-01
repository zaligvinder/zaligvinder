(declare-const X String)
; ^0{0,1}[1-9]{1}[0-9]{2}[\s]{0,1}[\-]{0,1}[\s]{0,1}[1-9]{1}[0-9]{6}$
(assert (str.in_re X (re.++ (re.opt (str.to_re "0")) ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt (str.to_re "-")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 6 6) (re.range "0" "9")) (str.to_re "\u{a}"))))
; versionIDENTIFYstarted\u{2E}User-Agent\u{3A}
(assert (str.in_re X (str.to_re "versionIDENTIFYstarted.User-Agent:\u{a}")))
; /\u{2e}ru\/\w+\?\d$/miU
(assert (not (str.in_re X (re.++ (str.to_re "/.ru/") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "?") (re.range "0" "9") (str.to_re "/miU\u{a}")))))
; url=\d+Host\u{3A}.*backtrust\u{2E}comv\u{2E}LoginHost\u{3a}\u{2F}friendship\u{2F}email_thank_you\?
(assert (str.in_re X (re.++ (str.to_re "url=") (re.+ (re.range "0" "9")) (str.to_re "Host:") (re.* re.allchar) (str.to_re "backtrust.comv.LoginHost:/friendship/email_thank_you?\u{a}"))))
; (\*\*)(.+)(\*\*)
(assert (str.in_re X (re.++ (str.to_re "**") (re.+ re.allchar) (str.to_re "**\u{a}"))))
(check-sat)
