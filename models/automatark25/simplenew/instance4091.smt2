(declare-const X String)
; ^([a-hA-H]{1}[1-8]{1})$
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 1 1) (re.union (re.range "a" "h") (re.range "A" "H"))) ((_ re.loop 1 1) (re.range "1" "8"))))))
(check-sat)
