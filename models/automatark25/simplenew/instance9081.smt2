(declare-const X String)
; /(<\/?)(\w+)([^>]*>)/e
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "/e\x0a<") (re.opt (str.to.re "/")) (re.* (re.comp (str.to.re ">"))) (str.to.re ">")))))
(check-sat)
