(declare-const X String)
; TROJAN-Owner\u{3A}User-Agent\u{3a}%3fTs2\u{2F}
(assert (not (str.in_re X (str.to_re "TROJAN-Owner:User-Agent:%3fTs2/\u{a}"))))
; \.myway\.comToolbarUI2Host\u{3A}Subject\u{3A}toxbqyosoe\u{2f}cpvm
(assert (not (str.in_re X (str.to_re ".myway.com\u{1b}ToolbarUI2Host:Subject:toxbqyosoe/cpvm\u{a}"))))
(check-sat)
