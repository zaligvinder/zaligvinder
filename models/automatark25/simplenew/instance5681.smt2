(declare-const X String)
; Server.*Host\u{3a}.*SpyAgentRootHost\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "Server") (re.* re.allchar) (str.to_re "Host:") (re.* re.allchar) (str.to_re "SpyAgentRootHost:\u{a}")))))
(check-sat)
