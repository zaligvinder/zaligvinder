(declare-const X String)
; Subject\x3aSpywareSpyBuddy
(assert (str.in.re X (str.to.re "Subject:SpywareSpyBuddy\x0a")))
(check-sat)
