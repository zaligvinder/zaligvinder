(declare-const X String)
; ProxyDownCurrentUser-Agent\x3AHost\x3Acom\x2Findex\.php\?tpid=
(assert (not (str.in.re X (str.to.re "ProxyDownCurrentUser-Agent:Host:com/index.php?tpid=\x0a"))))
(check-sat)
