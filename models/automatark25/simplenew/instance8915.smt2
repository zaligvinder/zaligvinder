(declare-const X String)
; User-Agent\x3Agpstool\x2eglobaladserver\x2ecom
(assert (not (str.in.re X (str.to.re "User-Agent:gpstool.globaladserver.com\x0a"))))
(check-sat)
