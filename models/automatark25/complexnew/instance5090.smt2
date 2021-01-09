(declare-const X String)
; thesearchresltLoggerHost\x3ABetaHWAEHost\x3Ais
(assert (str.in.re X (str.to.re "thesearchresltLoggerHost:BetaHWAEHost:is\x0a")))
; weather2ResultX-Sender\x3A
(assert (str.in.re X (str.to.re "weather2ResultX-Sender:\x13\x0a")))
(check-sat)
