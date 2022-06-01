(declare-const X String)
; RXnewads1\u{2E}comSPYcom\u{2F}index\.php\?tpid=
(assert (not (str.in_re X (str.to_re "RXnewads1.comSPYcom/index.php?tpid=\u{a}"))))
(check-sat)
