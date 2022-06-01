(declare-const X String)
; /^\/cdmax$/Ui
(assert (str.in_re X (str.to_re "//cdmax/Ui\u{a}")))
(check-sat)
