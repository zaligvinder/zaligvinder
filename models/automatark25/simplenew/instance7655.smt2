(declare-const X String)
; ^[1-9][0-9]{1,6}\-[0-9]{2}\-[0-9]
(assert (str.in_re X (re.++ (re.range "1" "9") ((_ re.loop 1 6) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "-") (re.range "0" "9") (str.to_re "\u{a}"))))
(check-sat)
