(declare-const X String)
; ^(\d{1,})$|^(\d{1,}\.)$|^(\d{0,}?\.\d{1,})$|^([+-]\d{1,}(\.)?)$|^([+-](\d{1,})?\.\d{1,})$
(assert (str.in.re X (re.union (re.+ (re.range "0" "9")) (re.++ (re.+ (re.range "0" "9")) (str.to.re ".")) (re.++ (re.* (re.range "0" "9")) (str.to.re ".") (re.+ (re.range "0" "9"))) (re.++ (re.union (str.to.re "+") (str.to.re "-")) (re.+ (re.range "0" "9")) (re.opt (str.to.re "."))) (re.++ (str.to.re "\x0a") (re.union (str.to.re "+") (str.to.re "-")) (re.opt (re.+ (re.range "0" "9"))) (str.to.re ".") (re.+ (re.range "0" "9"))))))
(check-sat)
