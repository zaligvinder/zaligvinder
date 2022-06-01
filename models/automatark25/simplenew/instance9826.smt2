(declare-const X String)
; ((PL|SK)-?)?[0-9]{10}
(assert (not (str.in_re X (re.++ (re.opt (re.++ (re.union (str.to_re "PL") (str.to_re "SK")) (re.opt (str.to_re "-")))) ((_ re.loop 10 10) (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)
