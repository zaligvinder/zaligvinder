(declare-const X String)
; HWPEMycount\u{2E}yok\u{2E}com
(assert (not (str.in_re X (str.to_re "HWPEMycount.yok.com\u{a}"))))
(check-sat)
