(declare-const X String)
; ^((0?[1-9])|((1|2)[0-9])|30|31)$
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (str.to_re "30") (str.to_re "31")) (str.to_re "\u{a}")))))
(check-sat)
