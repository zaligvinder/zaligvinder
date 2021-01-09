(declare-const X String)
; nethttp\x3A\x2F\x2FsupremetoolbarPORT\x3D
(assert (str.in.re X (str.to.re "nethttp://supremetoolbarPORT=\x0a")))
; ^[^']*$
(assert (str.in.re X (re.++ (re.* (re.comp (str.to.re "'"))) (str.to.re "\x0a"))))
(check-sat)
