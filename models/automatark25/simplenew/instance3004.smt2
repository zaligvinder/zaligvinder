(declare-const X String)
; ZC-BridgeHost\x3ASubject\x3aas\x2Estarware\x2Ecom
(assert (not (str.in.re X (str.to.re "ZC-BridgeHost:Subject:as.starware.com\x0a"))))
(check-sat)
