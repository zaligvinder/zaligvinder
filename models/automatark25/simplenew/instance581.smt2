(declare-const X String)
; \u{3B}CIAKeylogger-ProHost\u{3a}productscs\u{2E}shopperreports\u{2E}com
(assert (str.in_re X (str.to_re ";CIAKeylogger-ProHost:productscs.shopperreports.com\u{a}")))
(check-sat)
