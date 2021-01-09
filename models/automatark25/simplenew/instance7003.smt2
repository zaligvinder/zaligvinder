(declare-const X String)
; BysooTBUser-Agent\x3A
(assert (str.in.re X (str.to.re "BysooTBUser-Agent:\x0a")))
(check-sat)
