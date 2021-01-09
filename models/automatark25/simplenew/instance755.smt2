(declare-const X String)
; ^[0-9]{6}-[0-9pPtTfF][0-9]{3}$
(assert (str.in.re X (re.++ ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "-") (re.union (re.range "0" "9") (str.to.re "p") (str.to.re "P") (str.to.re "t") (str.to.re "T") (str.to.re "f") (str.to.re "F")) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
