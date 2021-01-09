(declare-const X String)
; ^(\d?)*(\.\d{1}|\.\d{2})?$
(assert (not (str.in.re X (re.++ (re.* (re.opt (re.range "0" "9"))) (re.opt (re.++ (str.to.re ".") (re.union ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "0" "9"))))) (str.to.re "\x0a")))))
(check-sat)
