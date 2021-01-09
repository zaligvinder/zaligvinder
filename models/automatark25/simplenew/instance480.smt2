(declare-const X String)
; </?[a-z][a-z0-9]*[^<>]*>
(assert (str.in.re X (re.++ (str.to.re "<") (re.opt (str.to.re "/")) (re.range "a" "z") (re.* (re.union (re.range "a" "z") (re.range "0" "9"))) (re.* (re.union (str.to.re "<") (str.to.re ">"))) (str.to.re ">\x0a"))))
(check-sat)
