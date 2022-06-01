(declare-const X String)
; /\/stat_d\/$/U
(assert (str.in_re X (str.to_re "//stat_d//U\u{a}")))
(check-sat)
