(declare-const X String)
; GREATDriplineisUser-Agent\u{3A}logs===========\u{3E}
(assert (not (str.in_re X (str.to_re "GREATDriplineisUser-Agent:logs===========>\u{a}"))))
(check-sat)
