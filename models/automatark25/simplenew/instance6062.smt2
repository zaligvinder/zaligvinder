(declare-const X String)
; ovplHost\u{3A}Host\u{3A}DownloadUser
(assert (not (str.in_re X (str.to_re "ovplHost:Host:DownloadUser\u{a}"))))
(check-sat)
