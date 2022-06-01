(declare-const X String)
; /\u{2e}gif([\?\u{5c}\u{2f}]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.gif") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; InformationAgentReferer\u{3A}Client
(assert (str.in_re X (str.to_re "InformationAgentReferer:Client\u{a}")))
(check-sat)
