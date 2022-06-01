(declare-const X String)
; spyblpat.*is[^\n\r]*BarFrom\u{3A}Host\u{3A}gdvsotuqwsg\u{2f}dxt\.hdPASSW=
(assert (not (str.in_re X (re.++ (str.to_re "spyblpat") (re.* re.allchar) (str.to_re "is") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "BarFrom:Host:gdvsotuqwsg/dxt.hdPASSW=\u{a}")))))
(check-sat)
