(declare-const X String)
; ^[89][0-9]{9}
(assert (not (str.in_re X (re.++ (re.union (str.to_re "8") (str.to_re "9")) ((_ re.loop 9 9) (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)
