(declare-const X String)
; /filename=p50[a-z0-9]{9}[0-9]{12}\.pdf/H
(assert (not (str.in.re X (re.++ (str.to.re "/filename=p50") ((_ re.loop 9 9) (re.union (re.range "a" "z") (re.range "0" "9"))) ((_ re.loop 12 12) (re.range "0" "9")) (str.to.re ".pdf/H\x0a")))))
(check-sat)
