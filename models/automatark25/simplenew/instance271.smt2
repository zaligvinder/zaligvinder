(declare-const X String)
; /\/stat_u\/$/U
(assert (str.in.re X (str.to.re "//stat_u//U\x0a")))
(check-sat)
