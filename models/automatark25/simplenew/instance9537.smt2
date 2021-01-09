(declare-const X String)
; com\x2Findex\.php\?tpid=\x7D\x7BUser\x3A
(assert (not (str.in.re X (str.to.re "com/index.php?tpid=}{User:\x0a"))))
(check-sat)
