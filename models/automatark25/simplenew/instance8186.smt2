(declare-const X String)
; ^[a-z]+[0-9]*[a-z]+$
(assert (str.in.re X (re.++ (re.+ (re.range "a" "z")) (re.* (re.range "0" "9")) (re.+ (re.range "a" "z")) (str.to.re "\x0a"))))
(check-sat)
