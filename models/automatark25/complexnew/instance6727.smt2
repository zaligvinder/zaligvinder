(declare-const X String)
; \w.+(\n\t.+){0,}
(assert (not (str.in_re X (re.++ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")) (re.+ re.allchar) (re.* (re.++ (str.to_re "\u{a}\u{9}") (re.+ re.allchar))) (str.to_re "\u{a}")))))
; ([a-zA-Z]:(\\w+)*\\[a-zA-Z0_9]+)?.xls
(assert (not (str.in_re X (re.++ (re.opt (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to_re ":") (re.* (re.++ (str.to_re "\u{5c}") (re.+ (str.to_re "w")))) (str.to_re "\u{5c}") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (str.to_re "0") (str.to_re "_") (str.to_re "9"))))) re.allchar (str.to_re "xls\u{a}")))))
; Subject\u{3a}\s+Yeah\!Online\u{25}21\u{25}21\u{25}21
(assert (not (str.in_re X (re.++ (str.to_re "Subject:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Yeah!Online%21%21%21\u{a}")))))
(check-sat)
