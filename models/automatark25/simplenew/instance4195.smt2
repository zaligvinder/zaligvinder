(declare-const X String)
; ^([12]?[0-9]|3[01])$
(assert (str.in_re X (re.++ (re.union (re.++ (re.opt (re.union (str.to_re "1") (str.to_re "2"))) (re.range "0" "9")) (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "1")))) (str.to_re "\u{a}"))))
(check-sat)
