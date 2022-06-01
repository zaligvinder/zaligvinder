(declare-const X String)
; ^[SFTG]\d{7}[A-Z]$
(assert (not (str.in_re X (re.++ (re.union (str.to_re "S") (str.to_re "F") (str.to_re "T") (str.to_re "G")) ((_ re.loop 7 7) (re.range "0" "9")) (re.range "A" "Z") (str.to_re "\u{a}")))))
(check-sat)
