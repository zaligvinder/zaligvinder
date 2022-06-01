(declare-const X String)
; versionIDENTIFYstarted\u{2E}User-Agent\u{3A}
(assert (not (str.in_re X (str.to_re "versionIDENTIFYstarted.User-Agent:\u{a}"))))
; A-311www3\.addfreestats\.comAttachedX-Mailer\u{3A}
(assert (str.in_re X (str.to_re "A-311www3.addfreestats.comAttachedX-Mailer:\u{13}\u{a}")))
; 32e3432ew+
(assert (not (str.in_re X (re.++ (str.to_re "32e3432e") (re.+ (str.to_re "w")) (str.to_re "\u{a}")))))
; /\u{2e}dxf([\?\u{5c}\u{2f}]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.dxf") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; ((EE|EL|DE|PT)-?)?[0-9]{9}
(assert (not (str.in_re X (re.++ (re.opt (re.++ (re.union (str.to_re "EE") (str.to_re "EL") (str.to_re "DE") (str.to_re "PT")) (re.opt (str.to_re "-")))) ((_ re.loop 9 9) (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)
