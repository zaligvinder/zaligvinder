(declare-const X String)
; User-Agent\x3aUser-Agent\x3A
(assert (str.in.re X (str.to.re "User-Agent:User-Agent:\x0a")))
(check-sat)
