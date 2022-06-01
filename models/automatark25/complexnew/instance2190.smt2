(declare-const X String)
; vbwwwc\.goclick\.compassword\u{3B}0\u{3B}Incorrect
(assert (str.in_re X (str.to_re "vbwwwc.goclick.compassword;0;Incorrect\u{a}")))
; securityon\u{3A}Host\u{3A}Redirector\u{22}ServerHost\u{3A}
(assert (not (str.in_re X (str.to_re "securityon:Host:Redirector\u{22}ServerHost:\u{a}"))))
; /\u{2e}fli([\?\u{5c}\u{2f}]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.fli") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; /\u{2e}ram?([\?\u{5c}\u{2f}]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.ra") (re.opt (str.to_re "m")) (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
(check-sat)
