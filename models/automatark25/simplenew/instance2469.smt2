(declare-const X String)
; ^\d[0-9]*[-/]\d[0-9]*$
(assert (str.in.re X (re.++ (re.range "0" "9") (re.* (re.range "0" "9")) (re.union (str.to.re "-") (str.to.re "/")) (re.range "0" "9") (re.* (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
