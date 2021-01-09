(declare-const X String)
; User-Agent\x3ABasedUser-Agent\x3A
(assert (str.in.re X (str.to.re "User-Agent:BasedUser-Agent:\x0a")))
(check-sat)
