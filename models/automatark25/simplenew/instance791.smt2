(declare-const X String)
; /\/stat_svc\/$/U
(assert (str.in.re X (str.to.re "//stat_svc//U\x0a")))
(check-sat)
