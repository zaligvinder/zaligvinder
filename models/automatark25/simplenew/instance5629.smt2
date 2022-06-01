(declare-const X String)
; [0-9]*\.?[0-9]*[1-9]
(assert (str.in_re X (re.++ (re.* (re.range "0" "9")) (re.opt (str.to_re ".")) (re.* (re.range "0" "9")) (re.range "1" "9") (str.to_re "\u{a}"))))
(check-sat)
