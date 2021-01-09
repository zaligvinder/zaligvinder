(declare-const X String)
; ^[-]?\d{1,10}\.?([0-9][0-9])?$
(assert (str.in.re X (re.++ (re.opt (str.to.re "-")) ((_ re.loop 1 10) (re.range "0" "9")) (re.opt (str.to.re ".")) (re.opt (re.++ (re.range "0" "9") (re.range "0" "9"))) (str.to.re "\x0a"))))
; ^[0-9]{1,15}(\.([0-9]{1,2}))?$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 15) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (str.to.re "\x0a")))))
(check-sat)
