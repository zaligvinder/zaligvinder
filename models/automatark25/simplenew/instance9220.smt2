(declare-const X String)
; User-Agent\u{3a}User-Agent\u{3A}
(assert (str.in_re X (str.to_re "User-Agent:User-Agent:\u{a}")))
(check-sat)
