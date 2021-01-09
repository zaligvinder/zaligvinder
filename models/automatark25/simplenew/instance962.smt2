(declare-const X String)
; PORT\x3Dinternalcyber@yahoo\x2EcomHeaders
(assert (str.in.re X (str.to.re "PORT=internalcyber@yahoo.comHeaders\x0a")))
(check-sat)
