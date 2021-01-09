(declare-const X String)
; ^[+-]?\d+(\,\d{2})? *?$
(assert (not (str.in.re X (re.++ (re.opt (re.union (str.to.re "+") (str.to.re "-"))) (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to.re ",") ((_ re.loop 2 2) (re.range "0" "9")))) (re.* (str.to.re " ")) (str.to.re "\x0a")))))
; spyblpat.*is[^\n\r]*BarFrom\x3AHost\x3Agdvsotuqwsg\x2fdxt\.hdPASSW=
(assert (not (str.in.re X (re.++ (str.to.re "spyblpat") (re.* re.allchar) (str.to.re "is") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "BarFrom:Host:gdvsotuqwsg/dxt.hdPASSW=\x0a")))))
; ^[0-9][0-9,]*[0-9]$
(assert (not (str.in.re X (re.++ (re.range "0" "9") (re.* (re.union (re.range "0" "9") (str.to.re ","))) (re.range "0" "9") (str.to.re "\x0a")))))
(check-sat)
