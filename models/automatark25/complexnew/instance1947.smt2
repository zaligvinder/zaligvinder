(declare-const X String)
; ^\d{2,6}-\d{2}-\d$
(assert (not (str.in.re X (re.++ ((_ re.loop 2 6) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-") (re.range "0" "9") (str.to.re "\x0a")))))
; /^\/[a-f0-9]{32}\.php\?q=[a-f0-9]{32}$/U
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re ".php?q=") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/U\x0a"))))
; ProPOWRSTRPquick\x2Eqsrch\x2EcomReferer\x3A
(assert (str.in.re X (str.to.re "ProPOWRSTRPquick.qsrch.comReferer:\x0a")))
; thesearchresltLoggerHost\x3ABetaHWAEHost\x3Ais
(assert (str.in.re X (str.to.re "thesearchresltLoggerHost:BetaHWAEHost:is\x0a")))
(check-sat)
