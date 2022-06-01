(declare-const X String)
; (^[a-fA-F]+[+-]?$)
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}") (re.+ (re.union (re.range "a" "f") (re.range "A" "F"))) (re.opt (re.union (str.to_re "+") (str.to_re "-")))))))
(check-sat)
