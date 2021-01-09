(declare-const X String)
; \b[A-z0-9._%-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\b
(assert (not (str.in.re X (re.++ (re.+ (re.union (re.range "A" "z") (re.range "0" "9") (str.to.re ".") (str.to.re "_") (str.to.re "%") (str.to.re "-"))) (str.to.re "@") (re.+ (re.union (re.range "A" "Z") (re.range "0" "9") (str.to.re ".") (str.to.re "-"))) (str.to.re ".") ((_ re.loop 2 4) (re.range "A" "Z")) (str.to.re "\x0a")))))
(check-sat)
