(declare-const X String)
; /\/jlnp\.html$/U
(assert (not (str.in_re X (str.to_re "//jlnp.html/U\u{a}"))))
(check-sat)
