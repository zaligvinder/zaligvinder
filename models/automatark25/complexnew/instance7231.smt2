(declare-const X String)
; 1\-extreme\x2Ebizasdbiz\x2Ebizfrom\x7croogoo\x7cCurrentiOpus
(assert (not (str.in.re X (str.to.re "1-extreme.bizasdbiz.bizfrom|roogoo|CurrentiOpus\x0a"))))
; /^[a-z]\x3D[0-9a-z]{100}$/Pm
(assert (str.in.re X (re.++ (str.to.re "/") (re.range "a" "z") (str.to.re "=") ((_ re.loop 100 100) (re.union (re.range "0" "9") (re.range "a" "z"))) (str.to.re "/Pm\x0a"))))
; /^\x2f\x3fxclve\x5f[a-zA-Z0-9]{30}$/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//?xclve_") ((_ re.loop 30 30) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "/Ui\x0a")))))
; forum=From\x3acomTencentTravelerBackAtTaCkExplorer
(assert (not (str.in.re X (str.to.re "forum=From:comTencentTravelerBackAtTaCkExplorer\x0a"))))
(check-sat)
