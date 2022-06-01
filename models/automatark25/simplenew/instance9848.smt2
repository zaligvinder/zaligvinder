(declare-const X String)
; downloads\u{2E}morpheus\u{2E}com\u{2F}rotation
(assert (not (str.in_re X (str.to_re "downloads.morpheus.com/rotation\u{a}"))))
(check-sat)
