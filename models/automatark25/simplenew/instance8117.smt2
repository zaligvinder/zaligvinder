(declare-const X String)
; /\/stat_d\/$/U
(assert (str.in.re X (str.to.re "//stat_d//U\x0a")))
(check-sat)
