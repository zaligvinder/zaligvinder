(declare-const X String)
; Computeron\u{3A}com\u{3E}2\u{2E}41
(assert (str.in_re X (str.to_re "Computeron:com>2.41\u{a}")))
(check-sat)
