(declare-const X String)
; \x2APORT1\x2AWarezX-Mailer\x3ASnake\x2Fbonzibuddy\x2F
(assert (not (str.in.re X (str.to.re "*PORT1*WarezX-Mailer:\x13Snake/bonzibuddy/\x0a"))))
(check-sat)
