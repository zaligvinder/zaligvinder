(declare-const X String)
; Host\u{3A}\u{25}2EResultsUser-Agent\u{3A}
(assert (str.in_re X (str.to_re "Host:%2EResultsUser-Agent:\u{a}")))
; Host\u{3A}Test\u{3C}\u{2F}chat\u{3E}ResultsSubject\u{3A}
(assert (not (str.in_re X (str.to_re "Host:Test</chat>ResultsSubject:\u{a}"))))
(check-sat)
