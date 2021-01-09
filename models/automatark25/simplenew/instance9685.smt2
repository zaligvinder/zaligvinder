(declare-const X String)
; ^(\+65)?\d{8}$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "+65")) ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
