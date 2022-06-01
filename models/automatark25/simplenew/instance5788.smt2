(declare-const X String)
; ^\d*[1-9]\d*$
(assert (not (str.in_re X (re.++ (re.* (re.range "0" "9")) (re.range "1" "9") (re.* (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)
