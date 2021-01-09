(declare-const X String)
; www\x2Emaxifiles\x2EcomServidor\x2E
(assert (not (str.in.re X (str.to.re "www.maxifiles.comServidor.\x13\x0a"))))
(check-sat)
