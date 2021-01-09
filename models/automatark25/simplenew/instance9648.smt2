(declare-const X String)
; ^0$|^[1-9][0-9]*$|^[1-9][0-9]{0,2}(,[0-9]{3})$
(assert (str.in.re X (re.union (str.to.re "0") (re.++ (re.range "1" "9") (re.* (re.range "0" "9"))) (re.++ (re.range "1" "9") ((_ re.loop 0 2) (re.range "0" "9")) (str.to.re "\x0a,") ((_ re.loop 3 3) (re.range "0" "9"))))))
(check-sat)
