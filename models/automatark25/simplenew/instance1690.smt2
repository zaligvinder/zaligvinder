(declare-const X String)
; www\u{2E}searchreslt\u{2E}com
(assert (not (str.in_re X (str.to_re "www.searchreslt.com\u{a}"))))
(check-sat)
