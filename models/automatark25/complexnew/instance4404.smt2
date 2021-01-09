(declare-const X String)
; ^[+][0-9]\d{2}-\d{3}-\d{4}$
(assert (str.in.re X (re.++ (str.to.re "+") (re.range "0" "9") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; ^(\$|)([1-9]\d{0,2}(\,\d{3})*|([1-9]\d*))(\.\d{2})?$
(assert (str.in.re X (re.++ (str.to.re "$") (re.union (re.++ (re.range "1" "9") ((_ re.loop 0 2) (re.range "0" "9")) (re.* (re.++ (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9"))))) (re.++ (re.range "1" "9") (re.* (re.range "0" "9")))) (re.opt (re.++ (str.to.re ".") ((_ re.loop 2 2) (re.range "0" "9")))) (str.to.re "\x0a"))))
; /\x3Fp\x3D[0-9]{1,10}\x26d\x3D/U
(assert (not (str.in.re X (re.++ (str.to.re "/?p=") ((_ re.loop 1 10) (re.range "0" "9")) (str.to.re "&d=/U\x0a")))))
(check-sat)
