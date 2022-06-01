(declare-const X String)
; thesearchresltLoggerHost\u{3A}BetaHWAEHost\u{3A}is
(assert (str.in_re X (str.to_re "thesearchresltLoggerHost:BetaHWAEHost:is\u{a}")))
; weather2ResultX-Sender\u{3A}
(assert (str.in_re X (str.to_re "weather2ResultX-Sender:\u{13}\u{a}")))
(check-sat)
