(declare-const X String)
; /DEXT87(no|up|\d+\x2e\d+\x2e\d+\x2e\d+)/i
(assert (not (str.in.re X (re.++ (str.to.re "/DEXT87") (re.union (str.to.re "no") (str.to.re "up") (re.++ (re.+ (re.range "0" "9")) (str.to.re ".") (re.+ (re.range "0" "9")) (str.to.re ".") (re.+ (re.range "0" "9")) (str.to.re ".") (re.+ (re.range "0" "9")))) (str.to.re "/i\x0a")))))
(check-sat)
