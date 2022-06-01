(declare-const X String)
; httphostHost\u{3a}Agent\u{22}
(assert (not (str.in_re X (str.to_re "httphostHost:Agent\u{22}\u{a}"))))
(check-sat)
