(declare-const X String)
; ^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re ".") (str.to.re "+") (str.to.re "-"))) (str.to.re "@") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "-"))) (str.to.re ".") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "-") (str.to.re "."))) (str.to.re "\x0a"))))
; ^(([0-2]*[0-9]+[0-9]+)\.([0-2]*[0-9]+[0-9]+)\.([0-2]*[0-9]+[0-9]+)\.([0-2]*[0-9]+[0-9]+))$
(assert (str.in.re X (re.++ (str.to.re "\x0a...") (re.* (re.range "0" "2")) (re.+ (re.range "0" "9")) (re.+ (re.range "0" "9")) (re.* (re.range "0" "2")) (re.+ (re.range "0" "9")) (re.+ (re.range "0" "9")) (re.* (re.range "0" "2")) (re.+ (re.range "0" "9")) (re.+ (re.range "0" "9")) (re.* (re.range "0" "2")) (re.+ (re.range "0" "9")) (re.+ (re.range "0" "9")))))
(check-sat)
