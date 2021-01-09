(declare-const X String)
; engineResultUser-Agent\x3A
(assert (not (str.in.re X (str.to.re "engineResultUser-Agent:\x0a"))))
(check-sat)
