(declare-const X String)
; /^(\d+\*)+(\d)+$/gm
(assert (str.in_re X (re.++ (str.to_re "/") (re.+ (re.++ (re.+ (re.range "0" "9")) (str.to_re "*"))) (re.+ (re.range "0" "9")) (str.to_re "/gm\u{a}"))))
(check-sat)
