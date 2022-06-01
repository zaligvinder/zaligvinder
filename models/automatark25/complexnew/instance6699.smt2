(declare-const X String)
; url=\d+Host\u{3A}.*backtrust\u{2E}comv\u{2E}LoginHost\u{3a}\u{2F}friendship\u{2F}email_thank_you\?
(assert (not (str.in_re X (re.++ (str.to_re "url=") (re.+ (re.range "0" "9")) (str.to_re "Host:") (re.* re.allchar) (str.to_re "backtrust.comv.LoginHost:/friendship/email_thank_you?\u{a}")))))
; (BE-?)?0?[0-9]{9}
(assert (str.in_re X (re.++ (re.opt (re.++ (str.to_re "BE") (re.opt (str.to_re "-")))) (re.opt (str.to_re "0")) ((_ re.loop 9 9) (re.range "0" "9")) (str.to_re "\u{a}"))))
; /logo\.png\u{3f}(sv\u{3d}\d{1,3})?\u{26}tq\u{3d}.*?SoSEU/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/logo.png?") (re.opt (re.++ (str.to_re "sv=") ((_ re.loop 1 3) (re.range "0" "9")))) (str.to_re "&tq=") (re.* re.allchar) (str.to_re "SoSEU/smiU\u{a}")))))
; upgrade\u{2E}qsrch\u{2E}info[^\n\r]*dcww\u{2E}dmcast\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "upgrade.qsrch.info") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "dcww.dmcast.com\u{a}")))))
(check-sat)
