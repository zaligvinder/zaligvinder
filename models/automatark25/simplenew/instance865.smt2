(declare-const X String)
; ^([a-zA-Z]+[\'\,\.\-]?[a-zA-Z ]*)+[ ]([a-zA-Z]+[\'\,\.\-]?[a-zA-Z ]+)+$
(assert (str.in.re X (re.++ (re.+ (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.opt (re.union (str.to.re "'") (str.to.re ",") (str.to.re ".") (str.to.re "-"))) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re " "))))) (str.to.re " ") (re.+ (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.opt (re.union (str.to.re "'") (str.to.re ",") (str.to.re ".") (str.to.re "-"))) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re " "))))) (str.to.re "\x0a"))))
(check-sat)
