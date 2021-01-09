(declare-const X String)
; ^(\d{1,8}|(\d{0,8}\.{1}\d{1,2}){1})$
(assert (not (str.in.re X (re.++ (re.union ((_ re.loop 1 8) (re.range "0" "9")) ((_ re.loop 1 1) (re.++ ((_ re.loop 0 8) (re.range "0" "9")) ((_ re.loop 1 1) (str.to.re ".")) ((_ re.loop 1 2) (re.range "0" "9"))))) (str.to.re "\x0a")))))
(check-sat)
