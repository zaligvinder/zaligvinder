(declare-const X String)
; /\x3F[0-9a-z]{32}D/U
(assert (str.in.re X (re.++ (str.to.re "/?") ((_ re.loop 32 32) (re.union (re.range "0" "9") (re.range "a" "z"))) (str.to.re "D/U\x0a"))))
(check-sat)
