(declare-const X String)
; ^[A-Z]{4}[1-8](\d){2}$
(assert (not (str.in_re X (re.++ ((_ re.loop 4 4) (re.range "A" "Z")) (re.range "1" "8") ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)
