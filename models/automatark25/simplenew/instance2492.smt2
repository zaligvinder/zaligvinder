(declare-const X String)
; Server\.exeHWPEServer\x3aHost\x3A
(assert (not (str.in.re X (str.to.re "Server.exeHWPEServer:Host:\x0a"))))
(check-sat)
