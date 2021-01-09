(declare-const X String)
; (^[0-9]{1,8}|(^[0-9]{1,8}\.{0,1}[0-9]{1,2}))$
(assert (not (str.in.re X (re.++ (re.union ((_ re.loop 1 8) (re.range "0" "9")) (re.++ ((_ re.loop 1 8) (re.range "0" "9")) (re.opt (str.to.re ".")) ((_ re.loop 1 2) (re.range "0" "9")))) (str.to.re "\x0a")))))
(check-sat)
