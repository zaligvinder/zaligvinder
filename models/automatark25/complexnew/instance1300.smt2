(declare-const X String)
; ^(([01][0-9]|[012][0-3]):([0-5][0-9]))*$
(assert (not (str.in.re X (re.++ (re.* (re.++ (re.union (re.++ (re.union (str.to.re "0") (str.to.re "1")) (re.range "0" "9")) (re.++ (re.union (str.to.re "0") (str.to.re "1") (str.to.re "2")) (re.range "0" "3"))) (str.to.re ":") (re.range "0" "5") (re.range "0" "9"))) (str.to.re "\x0a")))))
; ^([0]{0,1}[0-7]{3})$
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.opt (str.to.re "0")) ((_ re.loop 3 3) (re.range "0" "7")))))
; (^(\d+)$)|(^(\d{1,3}[ ,\.](\d{3}[ ,\.])*\d{3}|\d{1,3})$)
(assert (str.in.re X (re.union (re.+ (re.range "0" "9")) (re.++ (re.union (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.union (str.to.re " ") (str.to.re ",") (str.to.re ".")) (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.union (str.to.re " ") (str.to.re ",") (str.to.re ".")))) ((_ re.loop 3 3) (re.range "0" "9"))) ((_ re.loop 1 3) (re.range "0" "9"))) (str.to.re "\x0a")))))
(check-sat)
