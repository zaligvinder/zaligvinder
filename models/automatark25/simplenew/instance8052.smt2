(declare-const X String)
; Yeah\!User-Agent\x3a
(assert (str.in.re X (str.to.re "Yeah!User-Agent:\x0a")))
(check-sat)
