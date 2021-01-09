(declare-const X String)
; ^\-?\(?([0-9]{0,3}(\,?[0-9]{3})*(\.?[0-9]*))\)?$
(assert (str.in.re X (re.++ (re.opt (str.to.re "-")) (re.opt (str.to.re "(")) (re.opt (str.to.re ")")) (str.to.re "\x0a") ((_ re.loop 0 3) (re.range "0" "9")) (re.* (re.++ (re.opt (str.to.re ",")) ((_ re.loop 3 3) (re.range "0" "9")))) (re.opt (str.to.re ".")) (re.* (re.range "0" "9")))))
(check-sat)
