(declare-const X String)
; ^[+]?((\d*[1-9]+\d*\.?\d*)|(\d*\.\d*[1-9]+\d*))$
(assert (str.in_re X (re.++ (re.opt (str.to_re "+")) (re.union (re.++ (re.* (re.range "0" "9")) (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")) (re.opt (str.to_re ".")) (re.* (re.range "0" "9"))) (re.++ (re.* (re.range "0" "9")) (str.to_re ".") (re.* (re.range "0" "9")) (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")))) (str.to_re "\u{a}"))))
(check-sat)
