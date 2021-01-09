(declare-const X String)
; ([0-9]{4})-([0-9]{1,2})-([0-9]{1,2})
(assert (not (str.in.re X (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 1 2) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 1 2) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
