(declare-const X String)
; /^([A-Za-z]){1}([A-Za-z0-9-_.\:])+$/
(assert (not (str.in_re X (re.++ (str.to_re "/") ((_ re.loop 1 1) (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to_re "-") (str.to_re "_") (str.to_re ".") (str.to_re ":"))) (str.to_re "/\u{a}")))))
(check-sat)
