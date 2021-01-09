(declare-const X String)
; ^([0-9]{12},)+[0-9]{12}$|^([0-9]{12})$
(assert (str.in.re X (re.union (re.++ (re.+ (re.++ ((_ re.loop 12 12) (re.range "0" "9")) (str.to.re ","))) ((_ re.loop 12 12) (re.range "0" "9"))) (re.++ ((_ re.loop 12 12) (re.range "0" "9")) (str.to.re "\x0a")))))
; .*[Vv][Ii1]agr.*
(assert (not (str.in.re X (re.++ (re.* re.allchar) (re.union (str.to.re "V") (str.to.re "v")) (re.union (str.to.re "I") (str.to.re "i") (str.to.re "1")) (str.to.re "agr") (re.* re.allchar) (str.to.re "\x0a")))))
(check-sat)
