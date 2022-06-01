(declare-const X String)
; /^\/[a-z0-9]+\/access\.log$/Ui
(assert (not (str.in_re X (re.++ (str.to_re "//") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re "/access.log/Ui\u{a}")))))
(check-sat)
