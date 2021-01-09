(declare-const X String)
; http[s]?://[a-zA-Z0-9.-/]+
(assert (not (str.in.re X (re.++ (str.to.re "http") (re.opt (str.to.re "s")) (str.to.re "://") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (re.range "." "/"))) (str.to.re "\x0a")))))
(check-sat)
