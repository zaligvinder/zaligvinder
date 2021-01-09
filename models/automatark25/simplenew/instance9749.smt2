(declare-const X String)
; download\x2Eeblocs\x2EcomHost\x3AReferer\x3A
(assert (str.in.re X (str.to.re "download.eblocs.comHost:Referer:\x0a")))
(check-sat)
