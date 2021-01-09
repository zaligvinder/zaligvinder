(declare-const X String)
; ((^\d{8})|(^\d{2}[ ]\d{2}[ ]\d{2}[ ]\d{2})|(^\d{4}[ ]\d{4}))$
(assert (not (str.in.re X (re.++ (re.union ((_ re.loop 8 8) (re.range "0" "9")) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re " ") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re " ") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re " ") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re " ") ((_ re.loop 4 4) (re.range "0" "9")))) (str.to.re "\x0a")))))
(check-sat)
