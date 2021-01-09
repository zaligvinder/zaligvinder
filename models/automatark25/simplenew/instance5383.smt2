(declare-const X String)
; /php\?jnlp\=[a-f0-9]{10}($|\x2c)/U
(assert (str.in.re X (re.++ (str.to.re "/php?jnlp=") ((_ re.loop 10 10) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re ",/U\x0a"))))
(check-sat)
