(declare-const X String)
; spyblpat.*is[^\n\r]*BarFrom\x3AHost\x3Agdvsotuqwsg\x2fdxt\.hdPASSW=
(assert (not (str.in.re X (re.++ (str.to.re "spyblpat") (re.* re.allchar) (str.to.re "is") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "BarFrom:Host:gdvsotuqwsg/dxt.hdPASSW=\x0a")))))
(check-sat)
