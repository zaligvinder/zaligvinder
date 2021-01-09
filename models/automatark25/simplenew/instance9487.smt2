(declare-const X String)
; client\x2Ebaigoo\x2EcomUser\x3A
(assert (not (str.in.re X (str.to.re "client.baigoo.comUser:\x0a"))))
(check-sat)
