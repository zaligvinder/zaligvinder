(declare-const X String)
; ^((0|[1-9]+[0-9]*)-(0|[1-9]+[0-9]*);|(0|[1-9]+[0-9]*);)*?((0|[1-9]+[0-9]*)-(0|[1-9]+[0-9]*)|(0|[1-9]+[0-9]*)){1}$
(assert (not (str.in.re X (re.++ (re.* (re.union (re.++ (re.union (str.to.re "0") (re.++ (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")))) (str.to.re "-") (re.union (str.to.re "0") (re.++ (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")))) (str.to.re ";")) (re.++ (re.union (str.to.re "0") (re.++ (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")))) (str.to.re ";")))) ((_ re.loop 1 1) (re.union (re.++ (re.union (str.to.re "0") (re.++ (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")))) (str.to.re "-") (re.union (str.to.re "0") (re.++ (re.+ (re.range "1" "9")) (re.* (re.range "0" "9"))))) (str.to.re "0") (re.++ (re.+ (re.range "1" "9")) (re.* (re.range "0" "9"))))) (str.to.re "\x0a")))))
; (^(6011)\d{12}$)|(^(65)\d{14}$)
(assert (not (str.in.re X (re.union (re.++ (str.to.re "6011") ((_ re.loop 12 12) (re.range "0" "9"))) (re.++ (str.to.re "\x0a65") ((_ re.loop 14 14) (re.range "0" "9")))))))
(check-sat)
