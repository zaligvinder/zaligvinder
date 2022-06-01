(declare-const X String)
; @([_a-zA-Z]+)
(assert (str.in_re X (re.++ (str.to_re "@") (re.+ (re.union (str.to_re "_") (re.range "a" "z") (re.range "A" "Z"))) (str.to_re "\u{a}"))))
(check-sat)
