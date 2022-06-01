(declare-const X String)
; [+-](^0.*)
(assert (str.in_re X (re.++ (re.union (str.to_re "+") (str.to_re "-")) (str.to_re "\u{a}0") (re.* re.allchar))))
(check-sat)
