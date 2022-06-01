(declare-const X String)
; data\.warezclient\.comHost\u{3A}User-Agent\u{3A}
(assert (not (str.in_re X (str.to_re "data.warezclient.comHost:User-Agent:\u{a}"))))
(check-sat)
