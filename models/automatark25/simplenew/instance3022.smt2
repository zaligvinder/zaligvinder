(declare-const X String)
; /\/stat_n\/$/U
(assert (not (str.in.re X (str.to.re "//stat_n//U\x0a"))))
(check-sat)
