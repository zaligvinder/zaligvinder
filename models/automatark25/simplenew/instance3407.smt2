(declare-const X String)
; [^(\&)](\w*)+(\=)[\w\d ]*
(assert (not (str.in_re X (re.++ (re.union (str.to_re "(") (str.to_re "&") (str.to_re ")")) (re.+ (re.* (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (str.to_re "=") (re.* (re.union (re.range "0" "9") (str.to_re " ") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "\u{a}")))))
(check-sat)
