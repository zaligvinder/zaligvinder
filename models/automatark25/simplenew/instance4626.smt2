(declare-const X String)
; PortaUser-Agent\u{3A}Host\u{3A}
(assert (not (str.in_re X (str.to_re "PortaUser-Agent:Host:\u{a}"))))
(check-sat)
