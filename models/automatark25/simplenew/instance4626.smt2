(declare-const X String)
; PortaUser-Agent\x3AHost\x3A
(assert (not (str.in.re X (str.to.re "PortaUser-Agent:Host:\x0a"))))
(check-sat)
