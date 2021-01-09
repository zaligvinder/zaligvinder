(declare-const X String)
; ^[0-9]*[a-zA-Z]([-.\w]*[0-9a-zA-Z])*@([a-zA-Z][-\w\.]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,9}$
(assert (str.in.re X (re.++ (re.* (re.range "0" "9")) (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.++ (re.* (re.union (str.to.re "-") (str.to.re ".") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z")))) (str.to.re "@") (re.+ (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.union (str.to.re "-") (str.to.re ".") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z")) (str.to.re "."))) ((_ re.loop 2 9) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "\x0a"))))
; ^\d*\.?(((5)|(0)|))?$
(assert (str.in.re X (re.++ (re.* (re.range "0" "9")) (re.opt (str.to.re ".")) (re.opt (re.union (str.to.re "5") (str.to.re "0"))) (str.to.re "\x0a"))))
; ^(\$|)([1-9]\d{0,2}(\,\d{3})*|([1-9]\d*))(\.\d{2})?$
(assert (not (str.in.re X (re.++ (str.to.re "$") (re.union (re.++ (re.range "1" "9") ((_ re.loop 0 2) (re.range "0" "9")) (re.* (re.++ (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9"))))) (re.++ (re.range "1" "9") (re.* (re.range "0" "9")))) (re.opt (re.++ (str.to.re ".") ((_ re.loop 2 2) (re.range "0" "9")))) (str.to.re "\x0a")))))
; ^([9]{1})+(6|3|2|1{1})+([0-9]{7})$
(assert (str.in.re X (re.++ (re.+ ((_ re.loop 1 1) (str.to.re "9"))) (re.+ (re.union (str.to.re "6") (str.to.re "3") (str.to.re "2") ((_ re.loop 1 1) (str.to.re "1")))) ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
