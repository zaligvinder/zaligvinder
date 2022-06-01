(declare-const X String)
; OS-www\u{2E}topadwarereviews\u{2E}commedia\u{2E}top-banners\u{2E}comSuccessfully\u{21}
(assert (str.in_re X (str.to_re "OS-www.topadwarereviews.commedia.top-banners.comSuccessfully!\u{a}")))
(check-sat)
