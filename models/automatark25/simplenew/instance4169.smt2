(declare-const X String)
; ^[SC]{2}[0-9]{6}$
(assert (str.in_re X (re.++ ((_ re.loop 2 2) (re.union (str.to_re "S") (str.to_re "C"))) ((_ re.loop 6 6) (re.range "0" "9")) (str.to_re "\u{a}"))))
(check-sat)
