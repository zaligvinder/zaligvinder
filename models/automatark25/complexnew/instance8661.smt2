(declare-const X String)
; ^[a-zA-Z0-9]{1,20}$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 20) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "\x0a")))))
; (\\.|[^"])*
(assert (not (str.in.re X (re.++ (re.* (re.union (re.++ (str.to.re "\x5c") re.allchar) (re.comp (str.to.re "\x22")))) (str.to.re "\x0a")))))
; /[a-z\d\x2f\x2b\x3d]{100}/AGPi
(assert (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 100 100) (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "/") (str.to.re "+") (str.to.re "="))) (str.to.re "/AGPi\x0a"))))
; (^(((\d)|(\d\d)|(\d\d\d))(\xA0|\x20))*((\d)|(\d\d)|(\d\d\d))([,.]\d*)?$)
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.* (re.++ (re.union (re.range "0" "9") (re.++ (re.range "0" "9") (re.range "0" "9")) (re.++ (re.range "0" "9") (re.range "0" "9") (re.range "0" "9"))) (re.union (str.to.re "\xa0") (str.to.re " ")))) (re.union (re.range "0" "9") (re.++ (re.range "0" "9") (re.range "0" "9")) (re.++ (re.range "0" "9") (re.range "0" "9") (re.range "0" "9"))) (re.opt (re.++ (re.union (str.to.re ",") (str.to.re ".")) (re.* (re.range "0" "9")))))))
(check-sat)
