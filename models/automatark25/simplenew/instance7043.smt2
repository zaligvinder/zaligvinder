(declare-const X String)
; $(\n|\r\n)
(assert (str.in_re X (re.++ (re.union (str.to_re "\u{a}") (str.to_re "\u{d}\u{a}")) (str.to_re "\u{a}"))))
(check-sat)
