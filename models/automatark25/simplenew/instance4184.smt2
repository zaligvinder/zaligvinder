(declare-const X String)
; (^0.*[1-9]*)|(^860+)|(^8613)|(\D)|([0-9])
(assert (not (str.in_re X (re.union (re.++ (str.to_re "0") (re.* re.allchar) (re.* (re.range "1" "9"))) (re.++ (str.to_re "86") (re.+ (str.to_re "0"))) (str.to_re "8613") (re.comp (re.range "0" "9")) (re.++ (re.range "0" "9") (str.to_re "\u{a}"))))))
(check-sat)
