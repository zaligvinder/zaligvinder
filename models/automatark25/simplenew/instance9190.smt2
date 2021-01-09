(declare-const X String)
; areKeyloggerver=www\x2Esnap\x2Ecom
(assert (not (str.in.re X (str.to.re "areKeyloggerver=www.snap.com\x0a"))))
(check-sat)
