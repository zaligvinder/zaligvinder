(declare-const X String)
; Subject\u{3a}SpywareSpyBuddy
(assert (str.in_re X (str.to_re "Subject:SpywareSpyBuddy\u{a}")))
(check-sat)
