(declare-const X String)
; ^\d+\.\d\.\d[01]\d[0-3]\d\.[1-9]\d*$
(assert (str.in.re X (re.++ (re.+ (re.range "0" "9")) (str.to.re ".") (re.range "0" "9") (str.to.re ".") (re.range "0" "9") (re.union (str.to.re "0") (str.to.re "1")) (re.range "0" "9") (re.range "0" "3") (re.range "0" "9") (str.to.re ".") (re.range "1" "9") (re.* (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
