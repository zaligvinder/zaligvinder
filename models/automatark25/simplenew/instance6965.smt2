(declare-const X String)
; addrwww\x2Etrustedsearch\x2EcomX-Mailer\x3A
(assert (not (str.in.re X (str.to.re "addrwww.trustedsearch.comX-Mailer:\x13\x0a"))))
(check-sat)
