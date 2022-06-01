(declare-const X String)
; TPSystemad\u{2E}searchsquire\u{2E}comv\u{2E}Host\u{3A}hotbar
(assert (str.in_re X (str.to_re "TPSystemad.searchsquire.comv.Host:hotbar\u{a}")))
(check-sat)
