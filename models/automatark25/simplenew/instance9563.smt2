(declare-const X String)
; AID\x2FHost\x3aHourskl\x2Esearch\x2Eneed2find\x2EcomHost\x3aHost\x3A
(assert (str.in.re X (str.to.re "AID/Host:Hourskl.search.need2find.comHost:Host:\x0a")))
(check-sat)
