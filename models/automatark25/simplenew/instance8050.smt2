(declare-const X String)
; (</?\w*[^<>]*>)
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}<") (re.opt (str.to_re "/")) (re.* (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.* (re.union (str.to_re "<") (str.to_re ">"))) (str.to_re ">")))))
(check-sat)
