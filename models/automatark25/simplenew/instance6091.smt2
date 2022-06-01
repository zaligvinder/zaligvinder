(declare-const X String)
; LOGNetBusCookie\u{3a}Toolbar
(assert (not (str.in_re X (str.to_re "LOGNetBusCookie:Toolbar\u{a}"))))
(check-sat)
