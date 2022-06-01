(declare-const X String)
; [\u{0}-\u{1F}\u{7F}]
(assert (str.in_re X (re.++ (re.union (re.range "\u{0}" "\u{1f}") (str.to_re "\u{7f}")) (str.to_re "\u{a}"))))
(check-sat)
