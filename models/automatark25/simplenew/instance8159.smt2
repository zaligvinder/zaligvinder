(declare-const X String)
; ContactHost\x3aHost\x3AFloodedFictionalUser-Agent\x3AHost\x3a
(assert (str.in.re X (str.to.re "ContactHost:Host:FloodedFictionalUser-Agent:Host:\x0a")))
(check-sat)
