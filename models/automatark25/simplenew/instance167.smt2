(declare-const X String)
; ^[-]?\d{1,10}\.?([0-9][0-9])?$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "-")) ((_ re.loop 1 10) (re.range "0" "9")) (re.opt (str.to.re ".")) (re.opt (re.++ (re.range "0" "9") (re.range "0" "9"))) (str.to.re "\x0a")))))
(check-sat)
