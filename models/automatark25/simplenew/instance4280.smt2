(declare-const X String)
; data\.warezclient\.comHost\x3AUser-Agent\x3A
(assert (not (str.in.re X (str.to.re "data.warezclient.comHost:User-Agent:\x0a"))))
(check-sat)
