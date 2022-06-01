(declare-const X String)
; ^0?(5[024])(\-)?\d{7}$
(assert (not (str.in_re X (re.++ (re.opt (str.to_re "0")) (re.opt (str.to_re "-")) ((_ re.loop 7 7) (re.range "0" "9")) (str.to_re "\u{a}5") (re.union (str.to_re "0") (str.to_re "2") (str.to_re "4"))))))
(check-sat)
