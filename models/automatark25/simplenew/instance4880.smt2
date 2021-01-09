(declare-const X String)
; report\<\x2Ftitle\>Referer\x3Aaresflashdownloader\x2EcomHost\x3ADeathpioletLOGtowww\x2Esearchexpert\x2Ecom
(assert (str.in.re X (str.to.re "report</title>Referer:aresflashdownloader.comHost:DeathpioletLOGtowww.searchexpert.com\x0a")))
(check-sat)
