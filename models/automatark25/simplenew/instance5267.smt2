(declare-const X String)
; ^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "@") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re "_"))) (str.to.re ".") ((_ re.loop 2 3) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "\x0a"))))
(check-sat)
