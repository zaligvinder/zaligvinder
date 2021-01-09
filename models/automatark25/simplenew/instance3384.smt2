(declare-const X String)
; ^[A-Z][a-z]+((eir|(n|l)h)(a|o))$
(assert (str.in.re X (re.++ (re.range "A" "Z") (re.+ (re.range "a" "z")) (str.to.re "\x0a") (re.union (str.to.re "eir") (re.++ (re.union (str.to.re "n") (str.to.re "l")) (str.to.re "h"))) (re.union (str.to.re "a") (str.to.re "o")))))
(check-sat)
