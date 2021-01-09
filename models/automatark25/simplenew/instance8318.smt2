(declare-const X String)
; ^((\\{2}\w+)\$?)((\\{1}\w+)*$)
(assert (str.in.re X (re.++ (re.* (re.++ ((_ re.loop 1 1) (str.to.re "\x5c")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))))) (str.to.re "\x0a") (re.opt (str.to.re "$")) ((_ re.loop 2 2) (str.to.re "\x5c")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))))))
(check-sat)
