(declare-const X String)
; /\x2f[A-F0-9]{158}/U
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 158 158) (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to.re "/U\x0a")))))
; securityon\x3AHost\x3ARedirector\x22ServerHost\x3A
(assert (str.in.re X (str.to.re "securityon:Host:Redirector\x22ServerHost:\x0a")))
(check-sat)
