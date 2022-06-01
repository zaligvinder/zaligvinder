(declare-const X String)
; (^[0-9]{0,10}$)
(assert (not (str.in_re X (re.++ ((_ re.loop 0 10) (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)
