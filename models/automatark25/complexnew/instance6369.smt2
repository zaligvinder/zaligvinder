(declare-const X String)
; ^[+-]?\d+(\,\d{2})? *?$
(assert (not (str.in_re X (re.++ (re.opt (re.union (str.to_re "+") (str.to_re "-"))) (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to_re ",") ((_ re.loop 2 2) (re.range "0" "9")))) (re.* (str.to_re " ")) (str.to_re "\u{a}")))))
; spyblpat.*is[^\n\r]*BarFrom\u{3A}Host\u{3A}gdvsotuqwsg\u{2f}dxt\.hdPASSW=
(assert (not (str.in_re X (re.++ (str.to_re "spyblpat") (re.* re.allchar) (str.to_re "is") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "BarFrom:Host:gdvsotuqwsg/dxt.hdPASSW=\u{a}")))))
; ^[0-9][0-9,]*[0-9]$
(assert (not (str.in_re X (re.++ (re.range "0" "9") (re.* (re.union (re.range "0" "9") (str.to_re ","))) (re.range "0" "9") (str.to_re "\u{a}")))))
(check-sat)
