(declare-const X String)
; fromMinixmlldap\u{3A}\u{2F}\u{2F}\u{2F}bonzibuddy\u{2F}toolbar_domain_redirectUser-Agent\u{3A}
(assert (str.in_re X (str.to_re "fromMinixmlldap:///bonzibuddy/toolbar_domain_redirectUser-Agent:\u{a}")))
(check-sat)
