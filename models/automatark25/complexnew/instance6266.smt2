(declare-const X String)
; /\&k=\d+($|\&h=)/U
(assert (not (str.in.re X (re.++ (str.to.re "/&k=") (re.+ (re.range "0" "9")) (str.to.re "&h=/U\x0a")))))
; ^[0-9\s\(\)\+\-]+$
(assert (not (str.in.re X (re.++ (re.+ (re.union (re.range "0" "9") (str.to.re "(") (str.to.re ")") (str.to.re "+") (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a")))))
(check-sat)
