(declare-const X String)
; \[\w+\]\s+((.*=.*\s+)*|[^\[])
(assert (str.in_re X (re.++ (str.to_re "[") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "]") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.union (re.* (re.++ (re.* re.allchar) (str.to_re "=") (re.* re.allchar) (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))))) (re.comp (str.to_re "["))) (str.to_re "\u{a}"))))
(check-sat)
