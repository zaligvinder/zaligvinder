(declare-const X String)
; /^\/[a-z0-9]+\/access\.log$/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "/access.log/Ui\x0a")))))
(check-sat)
