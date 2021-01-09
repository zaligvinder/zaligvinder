(declare-const X String)
; /\/i\.html\?[a-z0-9]+\=[a-zA-Z0-9]{25}/U
(assert (not (str.in.re X (re.++ (str.to.re "//i.html?") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "=") ((_ re.loop 25 25) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "/U\x0a")))))
(check-sat)
