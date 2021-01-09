(declare-const X String)
; ^[\+\-]?[0-9]+([\,\.][0-9]+)?$
(assert (not (str.in.re X (re.++ (re.opt (re.union (str.to.re "+") (str.to.re "-"))) (re.+ (re.range "0" "9")) (re.opt (re.++ (re.union (str.to.re ",") (str.to.re ".")) (re.+ (re.range "0" "9")))) (str.to.re "\x0a")))))
; ^[a-zA-Z]\:\\.*|^\\\\.*
(assert (str.in.re X (re.union (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to.re ":\x5c") (re.* re.allchar)) (re.++ (str.to.re "\x5c\x5c") (re.* re.allchar) (str.to.re "\x0a")))))
(check-sat)
