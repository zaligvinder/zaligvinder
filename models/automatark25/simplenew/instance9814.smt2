(declare-const X String)
; /^\/[a-f0-9]{8}\/[a-f0-9]{7,8}\/$/U
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 8 8) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/") ((_ re.loop 7 8) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "//U\x0a"))))
(check-sat)
