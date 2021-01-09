(declare-const X String)
; Serverwjpropqmlpohj\x2floHost\x3AKEY=
(assert (not (str.in.re X (str.to.re "Serverwjpropqmlpohj/loHost:KEY=\x0a"))))
; [\t ]+
(assert (str.in.re X (re.++ (re.+ (re.union (str.to.re "\x09") (str.to.re " "))) (str.to.re "\x0a"))))
; report\<\x2Ftitle\>Referer\x3Aaresflashdownloader\x2EcomHost\x3ADeathpioletLOGtowww\x2Esearchexpert\x2Ecom
(assert (not (str.in.re X (str.to.re "report</title>Referer:aresflashdownloader.comHost:DeathpioletLOGtowww.searchexpert.com\x0a"))))
(check-sat)
