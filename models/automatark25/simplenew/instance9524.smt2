(declare-const X String)
; IT\d{2}[ ][a-zA-Z]\d{3}[ ]\d{4}[ ]\d{4}[ ]\d{4}[ ]\d{4}[ ]\d{3}|IT\d{2}[a-zA-Z]\d{22}
(assert (not (str.in.re X (re.++ (str.to.re "IT") (re.union (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re " ") (re.union (re.range "a" "z") (re.range "A" "Z")) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re " ") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re " ") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re " ") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re " ") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re " ") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.union (re.range "a" "z") (re.range "A" "Z")) ((_ re.loop 22 22) (re.range "0" "9")) (str.to.re "\x0a")))))))
(check-sat)
