(declare-const X String)
; [\\s+,]
(assert (str.in_re X (re.++ (re.union (str.to_re "\u{5c}") (str.to_re "s") (str.to_re "+") (str.to_re ",")) (str.to_re "\u{a}"))))
(check-sat)
