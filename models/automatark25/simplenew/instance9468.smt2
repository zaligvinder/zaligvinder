(declare-const X String)
; /^[a-z][\w\.]+@([\w\-]+\.)+[a-z]{2,7}$/i
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.range "a" "z") (re.+ (re.union (str.to.re ".") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "@") (re.+ (re.++ (re.+ (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "."))) ((_ re.loop 2 7) (re.range "a" "z")) (str.to.re "/i\x0a")))))
(check-sat)
