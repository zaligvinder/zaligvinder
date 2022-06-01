(declare-const X String)
; From\u{3A}.*Host\u{3A}\s+Downloadfowclxccdxn\u{2f}uxwn\.ddy
(assert (not (str.in_re X (re.++ (str.to_re "From:") (re.* re.allchar) (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Downloadfowclxccdxn/uxwn.ddy\u{a}")))))
; fromMinixmlldap\u{3A}\u{2F}\u{2F}\u{2F}bonzibuddy\u{2F}toolbar_domain_redirectUser-Agent\u{3A}
(assert (str.in_re X (str.to_re "fromMinixmlldap:///bonzibuddy/toolbar_domain_redirectUser-Agent:\u{a}")))
(check-sat)
