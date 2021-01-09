(declare-const X String)
; Serverulmxct\x2fmqoycWinSession\x2Fclient\x2F\x2APORT1\x2A
(assert (str.in.re X (str.to.re "Serverulmxct/mqoycWinSession/client/*PORT1*\x0a")))
(check-sat)
