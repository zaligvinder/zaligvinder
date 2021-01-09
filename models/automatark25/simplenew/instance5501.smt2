(declare-const X String)
; /\x26uid\x3d[a-f0-9]{16}($|\x26)/U
(assert (not (str.in.re X (re.++ (str.to.re "/&uid=") ((_ re.loop 16 16) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "&/U\x0a")))))
(check-sat)
