(declare-const X String)
; download\u{2E}eblocs\u{2E}comHost\u{3A}Referer\u{3A}
(assert (str.in_re X (str.to_re "download.eblocs.comHost:Referer:\u{a}")))
(check-sat)
