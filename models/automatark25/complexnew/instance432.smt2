(declare-const X String)
; ^((\+)?(\d{2}[-]))?(\d{10}){1}?$
(assert (str.in.re X (re.++ (re.opt (re.++ (re.opt (str.to.re "+")) ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-"))) ((_ re.loop 1 1) ((_ re.loop 10 10) (re.range "0" "9"))) (str.to.re "\x0a"))))
; /skillName\x3D\x7B\x28\x23/Ui
(assert (str.in.re X (str.to.re "/skillName={(#/Ui\x0a")))
; ^((0|[1-9]+[0-9]*)-(0|[1-9]+[0-9]*);|(0|[1-9]+[0-9]*);)*?((0|[1-9]+[0-9]*)-(0|[1-9]+[0-9]*)|(0|[1-9]+[0-9]*)){1}$
(assert (str.in.re X (re.++ (re.* (re.union (re.++ (re.union (str.to.re "0") (re.++ (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")))) (str.to.re "-") (re.union (str.to.re "0") (re.++ (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")))) (str.to.re ";")) (re.++ (re.union (str.to.re "0") (re.++ (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")))) (str.to.re ";")))) ((_ re.loop 1 1) (re.union (re.++ (re.union (str.to.re "0") (re.++ (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")))) (str.to.re "-") (re.union (str.to.re "0") (re.++ (re.+ (re.range "1" "9")) (re.* (re.range "0" "9"))))) (str.to.re "0") (re.++ (re.+ (re.range "1" "9")) (re.* (re.range "0" "9"))))) (str.to.re "\x0a"))))
(check-sat)
