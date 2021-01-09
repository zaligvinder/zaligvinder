(declare-const X String)
; (?s)/\*.*\*/
(assert (str.in.re X (re.++ (str.to.re "/*") (re.* re.allchar) (str.to.re "*/\x0a"))))
; \b[A-Z-[DFIOQUWZ]]\d[A-Z-[DFIOQU]]\ +\d[A-Z-[DFIOQU]]\d\b
(assert (str.in.re X (re.++ (re.union (re.range "A" "Z") (str.to.re "-") (str.to.re "[") (str.to.re "D") (str.to.re "F") (str.to.re "I") (str.to.re "O") (str.to.re "Q") (str.to.re "U") (str.to.re "W") (str.to.re "Z")) (str.to.re "]") (re.range "0" "9") (re.union (re.range "A" "Z") (str.to.re "-") (str.to.re "[") (str.to.re "D") (str.to.re "F") (str.to.re "I") (str.to.re "O") (str.to.re "Q") (str.to.re "U")) (str.to.re "]") (re.+ (str.to.re " ")) (re.range "0" "9") (re.union (re.range "A" "Z") (str.to.re "-") (str.to.re "[") (str.to.re "D") (str.to.re "F") (str.to.re "I") (str.to.re "O") (str.to.re "Q") (str.to.re "U")) (str.to.re "]") (re.range "0" "9") (str.to.re "\x0a"))))
; \w+@\w+\.\w+
(assert (not (str.in.re X (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "@") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re ".") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x0a")))))
(check-sat)
