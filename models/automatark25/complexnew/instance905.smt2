(declare-const X String)
; ^((0[1-9]|1[0-9]|2[0-4])([0-5]\d){2})$
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "4"))) ((_ re.loop 2 2) (re.++ (re.range "0" "5") (re.range "0" "9"))))))
; /\x28\x3f\x3d[^)]{300}/
(assert (not (str.in.re X (re.++ (str.to.re "/(?=") ((_ re.loop 300 300) (re.comp (str.to.re ")"))) (str.to.re "/\x0a")))))
(check-sat)
