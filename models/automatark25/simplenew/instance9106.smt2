(declare-const X String)
; Referer\x3Adialupvpn\x5fpwdwww\x2Esearchreslt\x2Ecom
(assert (not (str.in.re X (str.to.re "Referer:dialupvpn_pwdwww.searchreslt.com\x0a"))))
(check-sat)
