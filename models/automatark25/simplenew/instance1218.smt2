(declare-const X String)
; JMailReportgpstool\x2eglobaladserver\x2ecom
(assert (str.in.re X (str.to.re "JMailReportgpstool.globaladserver.com\x0a")))
(check-sat)
