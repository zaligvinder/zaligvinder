(declare-const X String)
; download\u{2E}eblocs\u{2E}comHost\u{3A}Referer\u{3A}
(assert (not (str.in_re X (str.to_re "download.eblocs.comHost:Referer:\u{a}"))))
; wlpgskmv\u{2f}lwzo\.qv#www\u{2E}kliksearch\u{2E}com
(assert (str.in_re X (str.to_re "wlpgskmv/lwzo.qv#www.kliksearch.com\u{a}")))
(check-sat)
