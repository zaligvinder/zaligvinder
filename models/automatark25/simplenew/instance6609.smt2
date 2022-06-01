(declare-const X String)
; ^(\(?\d\d\d\)?)?( |-|\.)?\d\d\d( |-|\.)?\d{4,4}(( |-|\.)?[ext\.]+ ?\d+)?$
(assert (str.in_re X (re.++ (re.opt (re.++ (re.opt (str.to_re "(")) (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.opt (str.to_re ")")))) (re.opt (re.union (str.to_re " ") (str.to_re "-") (str.to_re "."))) (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.opt (re.union (str.to_re " ") (str.to_re "-") (str.to_re "."))) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.++ (re.opt (re.union (str.to_re " ") (str.to_re "-") (str.to_re "."))) (re.+ (re.union (str.to_re "e") (str.to_re "x") (str.to_re "t") (str.to_re "."))) (re.opt (str.to_re " ")) (re.+ (re.range "0" "9")))) (str.to_re "\u{a}"))))
(check-sat)
