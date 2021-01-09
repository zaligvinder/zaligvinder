(declare-const X String)
; deskwizz\x2EcomReportsadblock\x2Elinkz\x2EcomUser-Agent\x3A
(assert (not (str.in.re X (str.to.re "deskwizz.comReportsadblock.linkz.comUser-Agent:\x0a"))))
(check-sat)
