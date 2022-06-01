(declare-const X String)
; ^[0]*?[1-9]\d*\.?[0]*$
(assert (str.in_re X (re.++ (re.* (str.to_re "0")) (re.range "1" "9") (re.* (re.range "0" "9")) (re.opt (str.to_re ".")) (re.* (str.to_re "0")) (str.to_re "\u{a}"))))
(check-sat)
