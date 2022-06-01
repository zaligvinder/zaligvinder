(declare-const X String)
; ^([a-z]+?\.[a-z]+)+\%$
(assert (not (str.in_re X (re.++ (re.+ (re.++ (re.+ (re.range "a" "z")) (str.to_re ".") (re.+ (re.range "a" "z")))) (str.to_re "%\u{a}")))))
(check-sat)
