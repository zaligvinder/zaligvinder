(declare-const X String)
; ppcdomain\u{2E}co\u{2E}ukBasic
(assert (not (str.in_re X (str.to_re "ppcdomain.co.ukBasic\u{a}"))))
(check-sat)
