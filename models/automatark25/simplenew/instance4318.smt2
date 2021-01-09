(declare-const X String)
; /\.exe$/U
(assert (str.in.re X (str.to.re "/.exe/U\x0a")))
(check-sat)
