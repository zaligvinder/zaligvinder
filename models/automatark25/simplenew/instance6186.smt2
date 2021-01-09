(declare-const X String)
; ^\d{1,3}((\.\d{1,3}){3}|(\.\d{1,3}){5})$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.union ((_ re.loop 3 3) (re.++ (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9")))) ((_ re.loop 5 5) (re.++ (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9"))))) (str.to.re "\x0a")))))
(check-sat)
