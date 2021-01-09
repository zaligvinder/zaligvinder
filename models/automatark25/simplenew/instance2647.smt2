(declare-const X String)
; .*[Vv][Ii1]agr.*
(assert (not (str.in.re X (re.++ (re.* re.allchar) (re.union (str.to.re "V") (str.to.re "v")) (re.union (str.to.re "I") (str.to.re "i") (str.to.re "1")) (str.to.re "agr") (re.* re.allchar) (str.to.re "\x0a")))))
(check-sat)
