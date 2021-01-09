(declare-const X String)
; ^[A-Z][a-z]+((i)?e(a)?(u)?[r(re)?|x]?)$
(assert (str.in.re X (re.++ (re.range "A" "Z") (re.+ (re.range "a" "z")) (str.to.re "\x0a") (re.opt (str.to.re "i")) (str.to.re "e") (re.opt (str.to.re "a")) (re.opt (str.to.re "u")) (re.opt (re.union (str.to.re "r") (str.to.re "(") (str.to.re "e") (str.to.re ")") (str.to.re "?") (str.to.re "|") (str.to.re "x"))))))
(check-sat)
