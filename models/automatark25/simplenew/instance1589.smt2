(declare-const X String)
; ovplHost\x3AHost\x3ADownloadUser
(assert (str.in.re X (str.to.re "ovplHost:Host:DownloadUser\x0a")))
(check-sat)
