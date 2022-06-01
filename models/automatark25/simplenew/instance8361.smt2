(declare-const X String)
; ([a-zA-Z]:(\\w+)*\\[a-zA-Z0_9]+)?.xls
(assert (str.in_re X (re.++ (re.opt (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to_re ":") (re.* (re.++ (str.to_re "\u{5c}") (re.+ (str.to_re "w")))) (str.to_re "\u{5c}") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (str.to_re "0") (str.to_re "_") (str.to_re "9"))))) re.allchar (str.to_re "xls\u{a}"))))
(check-sat)
