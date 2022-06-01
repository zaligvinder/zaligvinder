(declare-const X String)
; BasicPointsHost\u{3A}news
(assert (str.in_re X (str.to_re "BasicPointsHost:news\u{a}")))
; Fen\u{ea}treEye\u{2F}dss\u{2F}cc\.2_0_0\.TROJAN-
(assert (str.in_re X (str.to_re "Fen\u{ea}treEye/dss/cc.2_0_0.TROJAN-\u{a}")))
(check-sat)
