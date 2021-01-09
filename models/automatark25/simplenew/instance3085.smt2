(declare-const X String)
; s_sq=aolsnssigninUser-Agent\x3A
(assert (not (str.in.re X (str.to.re "s_sq=aolsnssigninUser-Agent:\x0a"))))
(check-sat)
