(declare-const X String)
; /\/[a-z0-9]{9}\.jnlp$/U
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 9 9) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".jnlp/U\x0a"))))
(check-sat)
