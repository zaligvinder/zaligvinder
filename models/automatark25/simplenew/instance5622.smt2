(declare-const X String)
; ^(\(?\d\d\d\)?)?( |-|\.)?\d\d\d( |-|\.)?\d{4,4}(( |-|\.)?[ext\.]+ ?\d+)?$
(assert (not (str.in.re X (re.++ (re.opt (re.++ (re.opt (str.to.re "(")) (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.opt (str.to.re ")")))) (re.opt (re.union (str.to.re " ") (str.to.re "-") (str.to.re "."))) (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.opt (re.union (str.to.re " ") (str.to.re "-") (str.to.re "."))) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.++ (re.opt (re.union (str.to.re " ") (str.to.re "-") (str.to.re "."))) (re.+ (re.union (str.to.re "e") (str.to.re "x") (str.to.re "t") (str.to.re "."))) (re.opt (str.to.re " ")) (re.+ (re.range "0" "9")))) (str.to.re "\x0a")))))
(check-sat)
