(declare-const X String)
; /^[\x28\x5b][^\x3D]+?[\x29\x5d][^\x3D]*?\x3D/Cm
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "(") (str.to.re "[")) (re.+ (re.comp (str.to.re "="))) (re.union (str.to.re ")") (str.to.re "]")) (re.* (re.comp (str.to.re "="))) (str.to.re "=/Cm\x0a")))))
; ^([1-9]{0,1})([0-9]{1})(\.[0-9])?$
(assert (str.in.re X (re.++ (re.opt (re.range "1" "9")) ((_ re.loop 1 1) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") (re.range "0" "9"))) (str.to.re "\x0a"))))
; ^(1?(-?\d{3})-?)?(\d{3})(-?\d{4})$
(assert (not (str.in.re X (re.++ (re.opt (re.++ (re.opt (str.to.re "1")) (re.opt (str.to.re "-")) (re.opt (str.to.re "-")) ((_ re.loop 3 3) (re.range "0" "9")))) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a") (re.opt (str.to.re "-")) ((_ re.loop 4 4) (re.range "0" "9"))))))
(check-sat)
