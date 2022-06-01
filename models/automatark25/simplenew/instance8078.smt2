(declare-const X String)
; (^(6011)\d{12}$)|(^(65)\d{14}$)
(assert (not (str.in_re X (re.union (re.++ (str.to_re "6011") ((_ re.loop 12 12) (re.range "0" "9"))) (re.++ (str.to_re "\u{a}65") ((_ re.loop 14 14) (re.range "0" "9")))))))
(check-sat)
