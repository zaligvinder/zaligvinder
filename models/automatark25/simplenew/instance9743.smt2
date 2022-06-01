(declare-const X String)
; ^([4]{1})([0-9]{12,15})$
(assert (str.in_re X (re.++ ((_ re.loop 1 1) (str.to_re "4")) ((_ re.loop 12 15) (re.range "0" "9")) (str.to_re "\u{a}"))))
(check-sat)
