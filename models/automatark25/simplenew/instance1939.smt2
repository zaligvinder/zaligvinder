(declare-const X String)
; User-Agent\u{3A}BasedUser-Agent\u{3A}
(assert (str.in_re X (str.to_re "User-Agent:BasedUser-Agent:\u{a}")))
(check-sat)
