(declare-const X String)
; User-Agent\u{3A}User-Agent\u{3A}
(assert (not (str.in_re X (str.to_re "User-Agent:User-Agent:\u{a}"))))
; Subject\u{3a}reportGatorNavExcel
(assert (str.in_re X (str.to_re "Subject:reportGatorNavExcel\u{a}")))
(check-sat)
