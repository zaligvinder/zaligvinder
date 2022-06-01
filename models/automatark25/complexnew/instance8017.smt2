(declare-const X String)
; /\u{2e}url([\?\u{5c}\u{2f}]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.url") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; spyblpat.*is[^\n\r]*BarFrom\u{3A}Host\u{3A}gdvsotuqwsg\u{2f}dxt\.hdPASSW=
(assert (str.in_re X (re.++ (str.to_re "spyblpat") (re.* re.allchar) (str.to_re "is") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "BarFrom:Host:gdvsotuqwsg/dxt.hdPASSW=\u{a}"))))
(check-sat)
