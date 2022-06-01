(declare-const X String)
; Fen\u{ea}treEye\u{2F}dss\u{2F}cc\.2_0_0\.TROJAN-
(assert (str.in_re X (str.to_re "Fen\u{ea}treEye/dss/cc.2_0_0.TROJAN-\u{a}")))
(check-sat)
