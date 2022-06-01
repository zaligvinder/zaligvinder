(declare-const X String)
; ^[+-]?[0-9]*\.?([0-9]?)*
(assert (not (str.in_re X (re.++ (re.opt (re.union (str.to_re "+") (str.to_re "-"))) (re.* (re.range "0" "9")) (re.opt (str.to_re ".")) (re.* (re.opt (re.range "0" "9"))) (str.to_re "\u{a}")))))
(check-sat)
