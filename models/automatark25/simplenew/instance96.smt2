(declare-const X String)
; /\.html\?jar$/U
(assert (not (str.in.re X (str.to.re "/.html?jar/U\x0a"))))
(check-sat)
