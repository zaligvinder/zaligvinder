(declare-const X String)
; </?[a-z][a-z0-9]*[^<>]*>
(assert (str.in_re X (re.++ (str.to_re "<") (re.opt (str.to_re "/")) (re.range "a" "z") (re.* (re.union (re.range "a" "z") (re.range "0" "9"))) (re.* (re.union (str.to_re "<") (str.to_re ">"))) (str.to_re ">\u{a}"))))
(check-sat)
