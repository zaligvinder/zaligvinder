(declare-const X String)
; Host\x3A1\-extreme\x2EbizX-Mailer\x3awww\x2Ewebcruiser\x2Ecc
(assert (not (str.in.re X (str.to.re "Host:1-extreme.bizX-Mailer:\x13www.webcruiser.cc\x0a"))))
(check-sat)
