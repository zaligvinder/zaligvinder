(declare-const X String)
; securityon\x3AHost\x3ARedirector\x22ServerHost\x3A
(assert (not (str.in.re X (str.to.re "securityon:Host:Redirector\x22ServerHost:\x0a"))))
(check-sat)
