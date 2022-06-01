(declare-const X String)
; /\/stat_n\/$/U
(assert (not (str.in_re X (str.to_re "//stat_n//U\u{a}"))))
(check-sat)
