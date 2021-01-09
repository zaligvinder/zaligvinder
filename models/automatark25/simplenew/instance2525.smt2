(declare-const X String)
; ^[a-z]+([a-z0-9-]*[a-z0-9]+)?(\.([a-z]+([a-z0-9-]*[a-z0-9]+)?)+)*$
(assert (str.in.re X (re.++ (re.+ (re.range "a" "z")) (re.opt (re.++ (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "-"))) (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))))) (re.* (re.++ (str.to.re ".") (re.+ (re.++ (re.+ (re.range "a" "z")) (re.opt (re.++ (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "-"))) (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))))))))) (str.to.re "\x0a"))))
(check-sat)
