(declare-const X String)
; ^([1-9]{1}[0-9]{0,7})+((,[1-9]{1}[0-9]{0,7}){0,1})+$
(assert (not (str.in.re X (re.++ (re.+ (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 0 7) (re.range "0" "9")))) (re.+ (re.opt (re.++ (str.to.re ",") ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 0 7) (re.range "0" "9"))))) (str.to.re "\x0a")))))
(check-sat)
