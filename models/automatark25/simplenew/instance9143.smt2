(declare-const X String)
; (^\b\d+-\d+$\b)|(^\b\d+$\b)
(assert (str.in_re X (re.union (re.++ (re.+ (re.range "0" "9")) (str.to_re "-") (re.+ (re.range "0" "9"))) (re.++ (re.+ (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)
