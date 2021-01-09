(declare-const X String)
; /^(\d+\*)+(\d)+$/gm
(assert (str.in.re X (re.++ (str.to.re "/") (re.+ (re.++ (re.+ (re.range "0" "9")) (str.to.re "*"))) (re.+ (re.range "0" "9")) (str.to.re "/gm\x0a"))))
(check-sat)
