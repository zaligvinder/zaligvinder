(declare-const X String)
; /\/jlnp\.html$/U
(assert (not (str.in.re X (str.to.re "//jlnp.html/U\x0a"))))
(check-sat)
