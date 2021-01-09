(declare-const X String)
; /^\x2f[a-z\x2d\x5f]{90,97}\.php$/U
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 90 97) (re.union (re.range "a" "z") (str.to.re "-") (str.to.re "_"))) (str.to.re ".php/U\x0a")))))
(check-sat)
