(declare-const X String)
; /^[\x28\x5b][^\x3D]+?[\x29\x5d][^\x3D]*?\x3D/Cm
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "(") (str.to.re "[")) (re.+ (re.comp (str.to.re "="))) (re.union (str.to.re ")") (str.to.re "]")) (re.* (re.comp (str.to.re "="))) (str.to.re "=/Cm\x0a")))))
; ^[a-zA-Z]\w{0,30}$
(assert (str.in.re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) ((_ re.loop 0 30) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x0a"))))
(check-sat)
