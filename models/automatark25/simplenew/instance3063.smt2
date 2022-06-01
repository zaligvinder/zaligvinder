(declare-const X String)
; ^\d*[0-9](|.\d*[0-9]|)*$
(assert (str.in_re X (re.++ (re.* (re.range "0" "9")) (re.range "0" "9") (re.* (re.++ re.allchar (re.* (re.range "0" "9")) (re.range "0" "9"))) (str.to_re "\u{a}"))))
(check-sat)
