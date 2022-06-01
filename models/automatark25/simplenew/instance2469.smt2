(declare-const X String)
; ^\d[0-9]*[-/]\d[0-9]*$
(assert (str.in_re X (re.++ (re.range "0" "9") (re.* (re.range "0" "9")) (re.union (str.to_re "-") (str.to_re "/")) (re.range "0" "9") (re.* (re.range "0" "9")) (str.to_re "\u{a}"))))
(check-sat)
