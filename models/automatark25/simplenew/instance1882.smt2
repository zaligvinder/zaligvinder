(declare-const X String)
; RXnewads1\x2EcomSPYcom\x2Findex\.php\?tpid=
(assert (not (str.in.re X (str.to.re "RXnewads1.comSPYcom/index.php?tpid=\x0a"))))
(check-sat)
