(declare-const X String)
; /^router=.*?arg=[a-z\d\.]*[^a-z\d\.&]/iP
(assert (not (str.in.re X (re.++ (str.to.re "/router=") (re.* re.allchar) (str.to.re "arg=") (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "."))) (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re ".") (str.to.re "&")) (str.to.re "/iP\x0a")))))
(check-sat)
