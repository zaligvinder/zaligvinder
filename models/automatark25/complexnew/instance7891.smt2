(declare-const X String)
; ^(([1-9]\d{0,2}(\,\d{3})*|([1-9]\d*))(\.\d{2})?)|([0]\.(([0][1-9])|([1-9]\d)))$
(assert (str.in.re X (re.union (re.++ (re.union (re.++ (re.range "1" "9") ((_ re.loop 0 2) (re.range "0" "9")) (re.* (re.++ (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9"))))) (re.++ (re.range "1" "9") (re.* (re.range "0" "9")))) (re.opt (re.++ (str.to.re ".") ((_ re.loop 2 2) (re.range "0" "9"))))) (re.++ (str.to.re "\x0a0.") (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (re.range "1" "9") (re.range "0" "9")))))))
; .*\$AVE|\$ave.*
(assert (str.in.re X (re.union (re.++ (re.* re.allchar) (str.to.re "$AVE")) (re.++ (str.to.re "$ave") (re.* re.allchar) (str.to.re "\x0a")))))
(check-sat)
