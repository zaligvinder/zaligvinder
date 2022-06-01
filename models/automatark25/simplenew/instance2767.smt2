(declare-const X String)
; sponsor2\.ucmore\.comUser-Agent\u{3A}User-Agent\u{3A}
(assert (not (str.in_re X (str.to_re "sponsor2.ucmore.comUser-Agent:User-Agent:\u{a}"))))
(check-sat)
