(declare-const X String)
; ^A-?|[BCD][+-]?|[SN]?F|W$
(assert (str.in_re X (re.union (re.++ (str.to_re "A") (re.opt (str.to_re "-"))) (re.++ (re.union (str.to_re "B") (str.to_re "C") (str.to_re "D")) (re.opt (re.union (str.to_re "+") (str.to_re "-")))) (re.++ (re.opt (re.union (str.to_re "S") (str.to_re "N"))) (str.to_re "F")) (str.to_re "W\u{a}"))))
(check-sat)
