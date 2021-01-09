(declare-const X String)
; /filename=[^\n]*\x2eogx/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".ogx/i\x0a"))))
; /\x00\.\x00\.\x00[\x2f\x5c]/R
(assert (str.in.re X (re.++ (str.to.re "/\x00.\x00.\x00") (re.union (str.to.re "/") (str.to.re "\x5c")) (str.to.re "/R\x0a"))))
; \x2APORT1\x2AWarezX-Mailer\x3ASnake\x2Fbonzibuddy\x2F
(assert (str.in.re X (str.to.re "*PORT1*WarezX-Mailer:\x13Snake/bonzibuddy/\x0a")))
(check-sat)
