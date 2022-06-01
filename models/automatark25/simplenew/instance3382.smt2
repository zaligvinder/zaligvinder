(declare-const X String)
; ^([0-9]{4})([0-9]{5})([0-9]{1})$
(assert (not (str.in_re X (re.++ ((_ re.loop 4 4) (re.range "0" "9")) ((_ re.loop 5 5) (re.range "0" "9")) ((_ re.loop 1 1) (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)
