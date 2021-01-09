(declare-const X String)
; /\/\d+\/\d\.zip\x27\x3b/
(assert (str.in.re X (re.++ (str.to.re "//") (re.+ (re.range "0" "9")) (str.to.re "/") (re.range "0" "9") (str.to.re ".zip';/\x0a"))))
(check-sat)
