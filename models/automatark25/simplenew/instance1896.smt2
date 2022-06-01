(declare-const X String)
; Server\u{3A}WordTheHost\u{3a}from
(assert (str.in_re X (str.to_re "Server:WordTheHost:from\u{a}")))
(check-sat)
