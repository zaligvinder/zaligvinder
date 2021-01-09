(declare-const X String)
; Host\x3AHost\x3Abody=\x2521\x2521\x2521Optix
(assert (str.in.re X (str.to.re "Host:Host:body=%21%21%21Optix\x13\x0a")))
(check-sat)
