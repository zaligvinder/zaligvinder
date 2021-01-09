(declare-const X String)
; /^\/999$/U
(assert (str.in.re X (str.to.re "//999/U\x0a")))
(check-sat)
