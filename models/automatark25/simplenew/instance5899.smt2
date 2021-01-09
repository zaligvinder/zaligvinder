(declare-const X String)
; Servidor\x2Ehome\x2Eedonkey\x2Ecom
(assert (not (str.in.re X (str.to.re "Servidor.\x13home.edonkey.com\x0a"))))
(check-sat)
