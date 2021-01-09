(declare-const X String)
; /^\x02\d+ cfA/smi
(assert (not (str.in.re X (re.++ (str.to.re "/\x02") (re.+ (re.range "0" "9")) (str.to.re " cfA/smi\x0a")))))
(check-sat)
