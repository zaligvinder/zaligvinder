(declare-const X String)
; ([0-9]{11}$)|(^[7-9][0-9]{9}$)
(assert (not (str.in_re X (re.union ((_ re.loop 11 11) (re.range "0" "9")) (re.++ (str.to_re "\u{a}") (re.range "7" "9") ((_ re.loop 9 9) (re.range "0" "9")))))))
(check-sat)
