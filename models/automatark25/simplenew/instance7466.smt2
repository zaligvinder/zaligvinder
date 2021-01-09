(declare-const X String)
; /^\x2f[0-9a-z]{30}$/Umi
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 30 30) (re.union (re.range "0" "9") (re.range "a" "z"))) (str.to.re "/Umi\x0a"))))
(check-sat)
