(declare-const X String)
; \u{3C}logs\u{40}dummyserver\u{2E}com\u{3E}
(assert (not (str.in_re X (str.to_re "<logs@dummyserver.com>\u{a}"))))
(check-sat)
