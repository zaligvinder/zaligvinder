(declare-const X String)
; password\x3B1\x3BOptixOwner\x3ABarwww\x2Eaccoona\x2Ecom
(assert (not (str.in.re X (str.to.re "password;1;OptixOwner:Barwww.accoona.com\x0a"))))
(check-sat)
