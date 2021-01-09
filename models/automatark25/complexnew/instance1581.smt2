(declare-const X String)
; download\x2Eeblocs\x2EcomHost\x3AReferer\x3A
(assert (not (str.in.re X (str.to.re "download.eblocs.comHost:Referer:\x0a"))))
; User-Agent\x3AFiltered
(assert (not (str.in.re X (str.to.re "User-Agent:Filtered\x0a"))))
(check-sat)
