(declare-const X String)
; ^(([1-9]{1}(\d+)?)(\.\d+)?)|([0]\.(\d+)?([1-9]{1})(\d+)?)$
(assert (str.in.re X (re.union (re.++ (re.opt (re.++ (str.to.re ".") (re.+ (re.range "0" "9")))) ((_ re.loop 1 1) (re.range "1" "9")) (re.opt (re.+ (re.range "0" "9")))) (re.++ (str.to.re "\x0a0.") (re.opt (re.+ (re.range "0" "9"))) ((_ re.loop 1 1) (re.range "1" "9")) (re.opt (re.+ (re.range "0" "9")))))))
(check-sat)
