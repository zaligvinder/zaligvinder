(declare-const X String)
; ^[a-zA-Z]([a-zA-Z[._][\d]])*[@][a-zA-Z[.][\d]]*[.][a-z[.][\d]]*
(assert (str.in.re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.++ (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re "[") (str.to.re ".") (str.to.re "_")) (re.range "0" "9") (str.to.re "]"))) (str.to.re "@") (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re "[") (str.to.re ".")) (re.range "0" "9") (re.* (str.to.re "]")) (str.to.re ".") (re.union (re.range "a" "z") (str.to.re "[") (str.to.re ".")) (re.range "0" "9") (re.* (str.to.re "]")) (str.to.re "\x0a"))))
; \d{2}[.]{1}\d{2}[.]{1}[0-9A-Za-z]{1}
(assert (str.in.re X (re.++ ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 1 1) (str.to.re ".")) ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 1 1) (str.to.re ".")) ((_ re.loop 1 1) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z"))) (str.to.re "\x0a"))))
(check-sat)
