(declare-const X String)
; metaresults\.copernic\.comServer\u{0}
(assert (not (str.in_re X (str.to_re "metaresults.copernic.comServer\u{0}\u{a}"))))
(check-sat)
