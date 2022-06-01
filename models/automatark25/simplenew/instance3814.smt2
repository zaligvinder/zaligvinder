(declare-const X String)
; DmInf\u{5E}\u{D}\u{A}\u{D}\u{A}Attached\u{2F}bar_pl\u{2F}chk\.fcgi
(assert (not (str.in_re X (str.to_re "DmInf^\u{d}\u{a}\u{d}\u{a}Attached/bar_pl/chk.fcgi\u{a}"))))
(check-sat)
