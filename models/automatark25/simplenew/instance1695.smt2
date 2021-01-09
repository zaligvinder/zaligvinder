(declare-const X String)
; ^([0-9]{0,2})-([0-9]{0,2})-([0-9]{0,4})$
(assert (str.in.re X (re.++ ((_ re.loop 0 2) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 0 2) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 0 4) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
