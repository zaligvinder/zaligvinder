(declare-const X String)
; ^[A-z]?\d{8}[A-z]$
(assert (str.in_re X (re.++ (re.opt (re.range "A" "z")) ((_ re.loop 8 8) (re.range "0" "9")) (re.range "A" "z") (str.to_re "\u{a}"))))
(check-sat)
