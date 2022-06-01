(declare-const X String)
; LOGNetBusCookie\u{3a}Toolbar
(assert (str.in_re X (str.to_re "LOGNetBusCookie:Toolbar\u{a}")))
; /\u{2f}ib2\u{2f}$/U
(assert (not (str.in_re X (str.to_re "//ib2//U\u{a}"))))
(check-sat)
