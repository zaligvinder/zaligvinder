(declare-const X String)
; ^\d{4,4}[A-Z0-9](, *\d{4,4})[A-Z0-9]*$
(assert (not (str.in.re X (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.union (re.range "A" "Z") (re.range "0" "9")) (re.* (re.union (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "\x0a,") (re.* (str.to.re " ")) ((_ re.loop 4 4) (re.range "0" "9"))))))
(check-sat)
