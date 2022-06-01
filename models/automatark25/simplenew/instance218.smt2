(declare-const X String)
; Host\u{3A}\s+\.ico.*SpyAgentHost\u{3A}
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re ".ico") (re.* re.allchar) (str.to_re "SpyAgentHost:\u{a}"))))
(check-sat)
