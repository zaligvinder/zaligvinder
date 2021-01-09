(declare-const X String)
; Host\x3AUser-Agent\x3aHost\x3APortScaner
(assert (str.in.re X (str.to.re "Host:User-Agent:Host:PortScaner\x0a")))
(check-sat)
