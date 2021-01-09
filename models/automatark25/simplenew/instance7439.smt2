(declare-const X String)
; media\x2Edxcdirect\x2Ecom
(assert (str.in.re X (str.to.re "media.dxcdirect.com\x0a")))
(check-sat)
