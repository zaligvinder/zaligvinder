(declare-const X String)
; /^\/cdmax$/Ui
(assert (str.in.re X (str.to.re "//cdmax/Ui\x0a")))
(check-sat)
