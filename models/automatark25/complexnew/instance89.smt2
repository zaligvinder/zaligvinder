(declare-const X String)
; ^(([0-9]{3})[-]?)*[0-9]{6,7}$
(assert (not (str.in.re X (re.++ (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re "-")))) ((_ re.loop 6 7) (re.range "0" "9")) (str.to.re "\x0a")))))
; [0-9]*\.?[0-9]*[1-9]
(assert (str.in.re X (re.++ (re.* (re.range "0" "9")) (re.opt (str.to.re ".")) (re.* (re.range "0" "9")) (re.range "1" "9") (str.to.re "\x0a"))))
; /^([a-z0-9])(([\-.]|[_]+)?([a-z0-9]+))*(@)([a-z0-9])((([-]+)?([a-z0-9]+))?)*((.[a-z]{2,3})?(.[a-z]{2,6}))$/i
(assert (str.in.re X (re.++ (str.to.re "/") (re.union (re.range "a" "z") (re.range "0" "9")) (re.* (re.++ (re.opt (re.union (re.+ (str.to.re "_")) (str.to.re "-") (str.to.re "."))) (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))))) (str.to.re "@") (re.union (re.range "a" "z") (re.range "0" "9")) (re.* (re.opt (re.++ (re.opt (re.+ (str.to.re "-"))) (re.+ (re.union (re.range "a" "z") (re.range "0" "9")))))) (str.to.re "/i\x0a") (re.opt (re.++ re.allchar ((_ re.loop 2 3) (re.range "a" "z")))) re.allchar ((_ re.loop 2 6) (re.range "a" "z")))))
(check-sat)
