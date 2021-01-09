(declare-const X String)
; Host\x3AHost\x3AUser-Agent\x3AServerad\x2Emokead\x2Ecom
(assert (str.in.re X (str.to.re "Host:Host:User-Agent:Serverad.mokead.com\x0a")))
(check-sat)
