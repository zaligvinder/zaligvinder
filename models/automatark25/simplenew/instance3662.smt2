(declare-const X String)
; (^([0-9]+[.]+[0-9]+)|(0)$)
(assert (str.in_re X (re.++ (re.union (re.++ (re.+ (re.range "0" "9")) (re.+ (str.to_re ".")) (re.+ (re.range "0" "9"))) (str.to_re "0")) (str.to_re "\u{a}"))))
(check-sat)
