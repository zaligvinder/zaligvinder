(declare-const X String)
; /^[a-zA-Z0-9]+$/
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "/\u{a}")))))
; (([a-z']?[a-z' ]*)|([a-z][\.])?([a-z][\.]))
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.opt (re.union (re.range "a" "z") (str.to_re "'"))) (re.* (re.union (re.range "a" "z") (str.to_re "'") (str.to_re " ")))) (re.++ (re.opt (re.++ (re.range "a" "z") (str.to_re "."))) (re.range "a" "z") (str.to_re "."))) (str.to_re "\u{a}")))))
(check-sat)
