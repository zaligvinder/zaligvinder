(declare-const X String)
; /filename\=[a-z0-9]{24}\.jar/H
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") ((_ re.loop 24 24) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".jar/H\x0a")))))
; ^[-+]?[0-9]+[.]?[0-9]*([eE][-+]?[0-9]+)?$
(assert (not (str.in.re X (re.++ (re.opt (re.union (str.to.re "-") (str.to.re "+"))) (re.+ (re.range "0" "9")) (re.opt (str.to.re ".")) (re.* (re.range "0" "9")) (re.opt (re.++ (re.union (str.to.re "e") (str.to.re "E")) (re.opt (re.union (str.to.re "-") (str.to.re "+"))) (re.+ (re.range "0" "9")))) (str.to.re "\x0a")))))
; (^[0-9]{0,10}$)
(assert (not (str.in.re X (re.++ ((_ re.loop 0 10) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
