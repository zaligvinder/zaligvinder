(declare-const X String)
; User-Agent\x3AUser-Agent\x3A
(assert (not (str.in.re X (str.to.re "User-Agent:User-Agent:\x0a"))))
(check-sat)
