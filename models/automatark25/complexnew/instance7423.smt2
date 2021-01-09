(declare-const X String)
; ((EE|EL|DE|PT)-?)?[0-9]{9}
(assert (str.in.re X (re.++ (re.opt (re.++ (re.union (str.to.re "EE") (str.to.re "EL") (str.to.re "DE") (str.to.re "PT")) (re.opt (str.to.re "-")))) ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re "\x0a"))))
; ^[01]?[- .]?\(?[2-9]\d{2}\)?[- .]?\d{3}[- .]?\d{4}$
(assert (str.in.re X (re.++ (re.opt (re.union (str.to.re "0") (str.to.re "1"))) (re.opt (re.union (str.to.re "-") (str.to.re " ") (str.to.re "."))) (re.opt (str.to.re "(")) (re.range "2" "9") ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (str.to.re ")")) (re.opt (re.union (str.to.re "-") (str.to.re " ") (str.to.re "."))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re " ") (str.to.re "."))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; /[0-9a-z]{8}-[0-9a-z]{4}-[0-9a-z]{4}-[0-9a-z]{4}-[0-9a-z]{13}\x28\x0A\x51/
(assert (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 8 8) (re.union (re.range "0" "9") (re.range "a" "z"))) (str.to.re "-") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "a" "z"))) (str.to.re "-") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "a" "z"))) (str.to.re "-") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "a" "z"))) (str.to.re "-") ((_ re.loop 13 13) (re.union (re.range "0" "9") (re.range "a" "z"))) (str.to.re "(\x0aQ/\x0a"))))
(check-sat)
