(declare-const X String)
; \u{2F}desktop\u{2F}SystemwwwfromToolbartheServer\u{3A}www\u{2E}searchreslt\u{2E}com
(assert (not (str.in_re X (str.to_re "/desktop/SystemwwwfromToolbartheServer:www.searchreslt.com\u{a}"))))
(check-sat)
