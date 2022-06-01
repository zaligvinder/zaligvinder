(declare-const X String)
; www\u{2e}urlblaze\u{2e}netCurrentHost\u{3A}
(assert (str.in_re X (str.to_re "www.urlblaze.netCurrentHost:\u{a}")))
(check-sat)
