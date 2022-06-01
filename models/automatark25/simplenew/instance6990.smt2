(declare-const X String)
; ^([A-Z]{2}[0-9]{3})|([A-Z]{2}[\ ][0-9]{3})$
(assert (str.in_re X (re.union (re.++ ((_ re.loop 2 2) (re.range "A" "Z")) ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (str.to_re "\u{a}") ((_ re.loop 2 2) (re.range "A" "Z")) (str.to_re " ") ((_ re.loop 3 3) (re.range "0" "9"))))))
(check-sat)
