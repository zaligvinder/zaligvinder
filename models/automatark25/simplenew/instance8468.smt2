(declare-const X String)
; PcastPORT-config\x2E180solutions\x2Ecom
(assert (not (str.in.re X (str.to.re "PcastPORT-config.180solutions.com\x0a"))))
(check-sat)
