(declare-const X String)
; /\/stat_u\/$/U
(assert (str.in_re X (str.to_re "//stat_u//U\u{a}")))
(check-sat)
