(declare-const X String)
; ^(27|0)[0-9]{9}
(assert (not (str.in_re X (re.++ (re.union (str.to_re "27") (str.to_re "0")) ((_ re.loop 9 9) (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)
