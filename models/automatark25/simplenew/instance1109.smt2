(declare-const X String)
; MyBrowserSbAtsHost\u{3A}
(assert (not (str.in_re X (str.to_re "MyBrowserSbAtsHost:\u{a}"))))
(check-sat)
