(declare-const X String)
; /(<\/?)(\w+)([^>]*>)/e
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "/e\u{a}<") (re.opt (str.to_re "/")) (re.* (re.comp (str.to_re ">"))) (str.to_re ">")))))
(check-sat)
