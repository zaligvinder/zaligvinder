(declare-const X String)
; ^(([0-2])?([0-9]))$
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}") (re.opt (re.range "0" "2")) (re.range "0" "9")))))
; (\+1|\+|1)|([^0-9])
(assert (not (str.in_re X (re.union (re.++ (re.range "0" "9") (str.to_re "\u{a}")) (str.to_re "+1") (str.to_re "+") (str.to_re "1")))))
(check-sat)
