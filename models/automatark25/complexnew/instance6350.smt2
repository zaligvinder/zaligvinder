(declare-const X String)
; ^(\d){7,8}$
(assert (str.in.re X (re.++ ((_ re.loop 7 8) (re.range "0" "9")) (str.to.re "\x0a"))))
; ^(\$)?((\d+)|(\d{1,3})(\,\d{3})*)(\.\d{2,})?$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "$")) (re.union (re.+ (re.range "0" "9")) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.* (re.++ (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9")))))) (re.opt (re.++ (str.to.re ".") ((_ re.loop 2 2) (re.range "0" "9")) (re.* (re.range "0" "9")))) (str.to.re "\x0a")))))
; /skillName\x3D\x7B\x28\x23/Ui
(assert (not (str.in.re X (str.to.re "/skillName={(#/Ui\x0a"))))
(check-sat)
