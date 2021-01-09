(declare-const X String)
; ^([a-z]+?\.[a-z]+)+\%$
(assert (not (str.in.re X (re.++ (re.+ (re.++ (re.+ (re.range "a" "z")) (str.to.re ".") (re.+ (re.range "a" "z")))) (str.to.re "%\x0a")))))
(check-sat)
