(declare-const X String)
; /[^\x20-\x7e\x0d\x0a]{4}/P
(assert (not (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 4 4) (re.union (re.range " " "~") (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "/P\x0a")))))
; thesearchresltLoggerHost\x3ABetaHWAEHost\x3Ais
(assert (not (str.in.re X (str.to.re "thesearchresltLoggerHost:BetaHWAEHost:is\x0a"))))
(check-sat)
