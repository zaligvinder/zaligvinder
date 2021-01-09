(declare-const X String)
; ^[0-9\s\(\)\+\-]+$
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "0" "9") (str.to.re "(") (str.to.re ")") (str.to.re "+") (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a"))))
(check-sat)
