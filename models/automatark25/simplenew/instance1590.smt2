(declare-const X String)
; \u{7D}\u{7B}Trojan\u{3A}Subject\u{3A}version
(assert (str.in_re X (str.to_re "}{Trojan:Subject:version\u{a}")))
(check-sat)
