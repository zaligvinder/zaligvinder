(declare-const X String)
; /^([A-Za-z]){1}([A-Za-z0-9-_.\:])+$/
(assert (not (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 1 1) (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re "-") (str.to.re "_") (str.to.re ".") (str.to.re ":"))) (str.to.re "/\x0a")))))
(check-sat)
