(declare-const X String)
; ^(([0]?[0-5][0-9]|[0-9]):([0-5][0-9]))$
(assert (str.in_re X (re.++ (str.to_re "\u{a}") (re.union (re.++ (re.opt (str.to_re "0")) (re.range "0" "5") (re.range "0" "9")) (re.range "0" "9")) (str.to_re ":") (re.range "0" "5") (re.range "0" "9"))))
(check-sat)
