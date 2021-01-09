(declare-const X String)
; (^.+\|+[A-Za-z])
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.+ re.allchar) (re.+ (str.to.re "|")) (re.union (re.range "A" "Z") (re.range "a" "z"))))))
(check-sat)
