(declare-const X String)
; ServerHost\x3Atid\x3D\x25toolbar\x5Fidcomtrustyfiles\x2Ecom
(assert (not (str.in.re X (str.to.re "ServerHost:tid=%toolbar_idcomtrustyfiles.com\x0a"))))
(check-sat)
