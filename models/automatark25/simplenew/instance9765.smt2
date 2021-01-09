(declare-const X String)
; /^\/[\w-]{64}$/U
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 64 64) (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "/U\x0a")))))
(check-sat)
