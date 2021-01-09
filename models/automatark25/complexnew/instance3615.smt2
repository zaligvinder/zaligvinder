(declare-const X String)
; ProxyDownCurrentUser-Agent\x3AHost\x3Acom\x2Findex\.php\?tpid=
(assert (not (str.in.re X (str.to.re "ProxyDownCurrentUser-Agent:Host:com/index.php?tpid=\x0a"))))
; Host\x3AUser-Agent\x3aHost\x3APortScaner
(assert (not (str.in.re X (str.to.re "Host:User-Agent:Host:PortScaner\x0a"))))
(check-sat)
