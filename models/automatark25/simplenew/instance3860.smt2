(declare-const X String)
; ^0[1-9]\d{7,8}$
(assert (not (str.in_re X (re.++ (str.to_re "0") (re.range "1" "9") ((_ re.loop 7 8) (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)
