(declare-const X String)
; /^\/[a-f0-9]{8}\/[a-f0-9]{8}\/$/iU
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 8 8) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/") ((_ re.loop 8 8) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "//iU\x0a")))))
(check-sat)
