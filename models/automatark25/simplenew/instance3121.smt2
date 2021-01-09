(declare-const X String)
; Host\x3APortawww\.thecommunicator\.net
(assert (str.in.re X (str.to.re "Host:Portawww.thecommunicator.net\x0a")))
(check-sat)
