(declare-const X String)
; ([a-zA-Z]:(\\w+)*\\[a-zA-Z0_9]+)?.xls
(assert (not (str.in.re X (re.++ (re.opt (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to.re ":") (re.* (re.++ (str.to.re "\x5c") (re.+ (str.to.re "w")))) (str.to.re "\x5c") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re "0") (str.to.re "_") (str.to.re "9"))))) re.allchar (str.to.re "xls\x0a")))))
(check-sat)
