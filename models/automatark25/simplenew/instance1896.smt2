(declare-const X String)
; Server\x3AWordTheHost\x3afrom
(assert (str.in.re X (str.to.re "Server:WordTheHost:from\x0a")))
(check-sat)
