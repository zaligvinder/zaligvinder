(declare-const X String)
; Yeah\!User-Agent\u{3a}
(assert (str.in_re X (str.to_re "Yeah!User-Agent:\u{a}")))
(check-sat)
