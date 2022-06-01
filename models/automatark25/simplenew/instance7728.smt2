(declare-const X String)
; Host\u{3A}configINTERNAL\.iniUser-Agent\u{3A}
(assert (not (str.in_re X (str.to_re "Host:configINTERNAL.iniUser-Agent:\u{a}"))))
(check-sat)
