(declare-const X String)
; \x3BCIAKeylogger-ProHost\x3aproductscs\x2Eshopperreports\x2Ecom
(assert (str.in.re X (str.to.re ";CIAKeylogger-ProHost:productscs.shopperreports.com\x0a")))
(check-sat)
