(declare-const X String)
; download\x2Eeblocs\x2EcomHost\x3AReferer\x3A
(assert (not (str.in.re X (str.to.re "download.eblocs.comHost:Referer:\x0a"))))
; wlpgskmv\x2flwzo\.qv#www\x2Ekliksearch\x2Ecom
(assert (str.in.re X (str.to.re "wlpgskmv/lwzo.qv#www.kliksearch.com\x0a")))
(check-sat)
