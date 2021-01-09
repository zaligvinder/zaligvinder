(declare-const X String)
; /^[a-zA-Z0-9]+$/
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "/\x0a")))))
; (([a-z']?[a-z' ]*)|([a-z][\.])?([a-z][\.]))
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.opt (re.union (re.range "a" "z") (str.to.re "'"))) (re.* (re.union (re.range "a" "z") (str.to.re "'") (str.to.re " ")))) (re.++ (re.opt (re.++ (re.range "a" "z") (str.to.re "."))) (re.range "a" "z") (str.to.re "."))) (str.to.re "\x0a")))))
(check-sat)
