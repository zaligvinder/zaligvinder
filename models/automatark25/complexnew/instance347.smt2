(declare-const X String)
; /^[\x28\x5b][^\x3D]+?[\x29\x5d][^\x3D]*?\x3D/Cm
(assert (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "(") (str.to.re "[")) (re.+ (re.comp (str.to.re "="))) (re.union (str.to.re ")") (str.to.re "]")) (re.* (re.comp (str.to.re "="))) (str.to.re "=/Cm\x0a"))))
; ^[A-Za-z]{1}[0-9]{7}$
(assert (str.in.re X (re.++ ((_ re.loop 1 1) (re.union (re.range "A" "Z") (re.range "a" "z"))) ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
