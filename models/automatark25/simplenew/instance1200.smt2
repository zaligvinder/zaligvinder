(declare-const X String)
; ^((\d{0,1}[0-9](\.\d{0,1}[0-9])?)|(100))$
(assert (str.in_re X (re.++ (re.union (re.++ (re.opt (re.range "0" "9")) (re.range "0" "9") (re.opt (re.++ (str.to_re ".") (re.opt (re.range "0" "9")) (re.range "0" "9")))) (str.to_re "100")) (str.to_re "\u{a}"))))
(check-sat)
