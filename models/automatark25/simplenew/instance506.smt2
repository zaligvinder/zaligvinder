(declare-const X String)
; /^([a-zA-Z0-9\.\_\-\&]+)@[a-zA-Z0-9]+\.[a-zA-Z]{3}|(.[a-zA-Z]{2}(\.[a-zA-Z]{2}))$/
(assert (not (str.in.re X (re.union (re.++ (str.to.re "/") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re ".") (str.to.re "_") (str.to.re "-") (str.to.re "&"))) (str.to.re "@") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re ".") ((_ re.loop 3 3) (re.union (re.range "a" "z") (re.range "A" "Z")))) (re.++ (str.to.re "/\x0a") re.allchar ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re ".") ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))))))))
(check-sat)
