(declare-const X String)
; Host\x3A\x252EResultsUser-Agent\x3A
(assert (str.in.re X (str.to.re "Host:%2EResultsUser-Agent:\x0a")))
; Host\x3ATest\x3C\x2Fchat\x3EResultsSubject\x3A
(assert (not (str.in.re X (str.to.re "Host:Test</chat>ResultsSubject:\x0a"))))
(check-sat)
