(declare-const X String)
; \.txt$
(assert (str.in.re X (str.to.re ".txt\x0a")))
(check-sat)
