(declare-const X String)
; ^(\$|)([1-9]+\d{0,2}(\,\d{3})*|([1-9]+\d*))(\.\d{2})?$
(assert (not (str.in.re X (re.++ (str.to.re "$") (re.union (re.++ (re.+ (re.range "1" "9")) ((_ re.loop 0 2) (re.range "0" "9")) (re.* (re.++ (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9"))))) (re.++ (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")))) (re.opt (re.++ (str.to.re ".") ((_ re.loop 2 2) (re.range "0" "9")))) (str.to.re "\x0a")))))
; /[?&]filename=[^&]*?\x2e\x2e\x2f/Ui
(assert (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "?") (str.to.re "&")) (str.to.re "filename=") (re.* (re.comp (str.to.re "&"))) (str.to.re "..//Ui\x0a"))))
; ^([0-9]{2})?(\([0-9]{2})\)([0-9]{3}|[0-9]{4})-[0-9]{4}$
(assert (str.in.re X (re.++ (re.opt ((_ re.loop 2 2) (re.range "0" "9"))) (str.to.re ")") (re.union ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 4 4) (re.range "0" "9"))) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a(") ((_ re.loop 2 2) (re.range "0" "9")))))
(check-sat)
