(declare-const X String)
; BY\x7D\x7BUser\x3AHost\x3Aconnection\x2E
(assert (str.in.re X (str.to.re "BY}{User:Host:connection.\x0a")))
(check-sat)
