(declare-const X String)
; /^[A-Z0-9._-]+@[A-Z0-9.-]+\.[A-Z0-9.-]+$/i
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.+ (re.union (re.range "A" "Z") (re.range "0" "9") (str.to.re ".") (str.to.re "_") (str.to.re "-"))) (str.to.re "@") (re.+ (re.union (re.range "A" "Z") (re.range "0" "9") (str.to.re ".") (str.to.re "-"))) (str.to.re ".") (re.+ (re.union (re.range "A" "Z") (re.range "0" "9") (str.to.re ".") (str.to.re "-"))) (str.to.re "/i\x0a")))))
(check-sat)
