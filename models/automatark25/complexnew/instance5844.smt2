(declare-const X String)
; /^\/[a-z0-9]{32}\/[a-z0-9]{32}\.jnlp/U
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 32 32) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "/") ((_ re.loop 32 32) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".jnlp/U\x0a")))))
; /\x253D$/Im
(assert (str.in.re X (str.to.re "/%3D/Im\x0a")))
(check-sat)
