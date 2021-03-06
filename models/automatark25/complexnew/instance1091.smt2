(declare-const X String)
; ^\d{3,3}\.\d{0,2}$|^E\d{3,3}\.\d{0,2}$
(assert (str.in.re X (re.union (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 0 2) (re.range "0" "9"))) (re.++ (str.to.re "E") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 0 2) (re.range "0" "9")) (str.to.re "\x0a")))))
; ^([V|E|J|G|v|e|j|g])([0-9]{5,8})$
(assert (not (str.in.re X (re.++ (re.union (str.to.re "V") (str.to.re "|") (str.to.re "E") (str.to.re "J") (str.to.re "G") (str.to.re "v") (str.to.re "e") (str.to.re "j") (str.to.re "g")) ((_ re.loop 5 8) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
