(declare-const X String)
; [^(\&)](\w*)+(\=)[\w\d ]*
(assert (not (str.in.re X (re.++ (re.union (str.to.re "(") (str.to.re "&") (str.to.re ")")) (re.+ (re.* (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")))) (str.to.re "=") (re.* (re.union (re.range "0" "9") (str.to.re " ") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x0a")))))
(check-sat)
