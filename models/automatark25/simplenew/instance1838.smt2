(declare-const X String)
; ^(\+){0,1}\d{1,10}$
(assert (str.in.re X (re.++ (re.opt (str.to.re "+")) ((_ re.loop 1 10) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
