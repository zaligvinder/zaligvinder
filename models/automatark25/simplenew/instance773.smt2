(declare-const X String)
; ^([0-1]?[0-9]{1}|2[0-3]{1}):([0-5]{1}[0-9]{1})$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.opt (re.range "0" "1")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ (str.to.re "2") ((_ re.loop 1 1) (re.range "0" "3")))) (str.to.re ":\x0a") ((_ re.loop 1 1) (re.range "0" "5")) ((_ re.loop 1 1) (re.range "0" "9"))))))
(check-sat)
