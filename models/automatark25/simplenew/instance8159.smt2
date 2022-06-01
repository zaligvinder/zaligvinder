(declare-const X String)
; ContactHost\u{3a}Host\u{3A}FloodedFictionalUser-Agent\u{3A}Host\u{3a}
(assert (str.in_re X (str.to_re "ContactHost:Host:FloodedFictionalUser-Agent:Host:\u{a}")))
(check-sat)
