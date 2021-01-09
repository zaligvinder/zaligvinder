(declare-const X String)
; ^[A-z]?\d{8}[A-z]$
(assert (not (str.in.re X (re.++ (re.opt (re.range "A" "z")) ((_ re.loop 8 8) (re.range "0" "9")) (re.range "A" "z") (str.to.re "\x0a")))))
; ^([0-9]*\,?[0-9]+|[0-9]+\,?[0-9]*)?$
(assert (str.in.re X (re.++ (re.opt (re.union (re.++ (re.* (re.range "0" "9")) (re.opt (str.to.re ",")) (re.+ (re.range "0" "9"))) (re.++ (re.+ (re.range "0" "9")) (re.opt (str.to.re ",")) (re.* (re.range "0" "9"))))) (str.to.re "\x0a"))))
(check-sat)
