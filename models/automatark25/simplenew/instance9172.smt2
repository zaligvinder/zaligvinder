(declare-const X String)
; www\u{2E}richfind\u{2E}comHost\u{3A}
(assert (not (str.in_re X (str.to_re "www.richfind.comHost:\u{a}"))))
(check-sat)
