(declare-const X String)
; Host\u{3A}Host\u{3a}fhfksjzsfu\u{2f}ahm\.uqsHost\u{3A}fowclxccdxn\u{2f}uxwn\.ddy
(assert (str.in_re X (str.to_re "Host:Host:fhfksjzsfu/ahm.uqsHost:fowclxccdxn/uxwn.ddy\u{a}")))
(check-sat)
