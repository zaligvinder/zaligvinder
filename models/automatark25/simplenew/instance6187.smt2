(declare-const X String)
; /\/\[fx]\.jar$/U
(assert (not (str.in.re X (str.to.re "//[fx].jar/U\x0a"))))
(check-sat)
