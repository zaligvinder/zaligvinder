(declare-const X String)
; TROJAN-Owner\u{3A}User-Agent\u{3a}%3fTs2\u{2F}
(assert (str.in_re X (str.to_re "TROJAN-Owner:User-Agent:%3fTs2/\u{a}")))
(check-sat)
