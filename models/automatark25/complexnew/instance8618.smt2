(declare-const X String)
; ^(\[a-zA-Z '\]+)$
(assert (str.in_re X (re.++ (str.to_re "\u{a}[a-zA-Z '") (re.+ (str.to_re "]")))))
; Host\u{3A}Host\u{3a}fhfksjzsfu\u{2f}ahm\.uqsHost\u{3A}fowclxccdxn\u{2f}uxwn\.ddy
(assert (str.in_re X (str.to_re "Host:Host:fhfksjzsfu/ahm.uqsHost:fowclxccdxn/uxwn.ddy\u{a}")))
; www\u{2E}webcruiser\u{2E}ccgot
(assert (str.in_re X (str.to_re "www.webcruiser.ccgot\u{a}")))
(check-sat)
