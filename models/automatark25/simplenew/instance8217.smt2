(declare-const X String)
; Subject\u{3a}reportGatorNavExcel
(assert (not (str.in_re X (str.to_re "Subject:reportGatorNavExcel\u{a}"))))
(check-sat)
