(declare-const X String)
; /[a-z\d\x2f\x2b\x3d]{100,300}/Pi
(assert (not (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 100 300) (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "/") (str.to.re "+") (str.to.re "="))) (str.to.re "/Pi\x0a")))))
; ^[0-9]{1,15}(\.([0-9]{1,2}))?$
(assert (str.in.re X (re.++ ((_ re.loop 1 15) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (str.to.re "\x0a"))))
(check-sat)
