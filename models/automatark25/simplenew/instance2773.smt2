(declare-const X String)
; /\u{0}\.\u{0}\.\u{0}[\u{2f}\u{5c}]/R
(assert (str.in_re X (re.++ (str.to_re "/\u{0}.\u{0}.\u{0}") (re.union (str.to_re "/") (str.to_re "\u{5c}")) (str.to_re "/R\u{a}"))))
(check-sat)
