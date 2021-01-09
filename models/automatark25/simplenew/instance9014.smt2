(declare-const X String)
; ^([A-z]{2}\d{9}[Gg][Bb])|(\d{12})$
(assert (not (str.in.re X (re.union (re.++ ((_ re.loop 2 2) (re.range "A" "z")) ((_ re.loop 9 9) (re.range "0" "9")) (re.union (str.to.re "G") (str.to.re "g")) (re.union (str.to.re "B") (str.to.re "b"))) (re.++ ((_ re.loop 12 12) (re.range "0" "9")) (str.to.re "\x0a"))))))
(check-sat)
