(declare-const X String)
; SSKCstech\x2Eweb-nexus\x2Enet
(assert (not (str.in.re X (str.to.re "SSKCstech.web-nexus.net\x0a"))))
(check-sat)
