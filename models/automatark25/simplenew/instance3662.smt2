(declare-const X String)
; (^([0-9]+[.]+[0-9]+)|(0)$)
(assert (str.in.re X (re.++ (re.union (re.++ (re.+ (re.range "0" "9")) (re.+ (str.to.re ".")) (re.+ (re.range "0" "9"))) (str.to.re "0")) (str.to.re "\x0a"))))
(check-sat)
