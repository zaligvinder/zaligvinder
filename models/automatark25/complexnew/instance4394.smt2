(declare-const X String)
; /^datapost\x7c\d+\x7c\d+\x7C[a-z0-9]+\x2E[a-z]{2,3}\x7C[a-z0-9]+\x7C/
(assert (not (str.in.re X (re.++ (str.to.re "/datapost|") (re.+ (re.range "0" "9")) (str.to.re "|") (re.+ (re.range "0" "9")) (str.to.re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".") ((_ re.loop 2 3) (re.range "a" "z")) (str.to.re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "|/\x0a")))))
; ^[A-Z][a-z]+((i)?e(a)?(u)?[r(re)?|x]?)$
(assert (str.in.re X (re.++ (re.range "A" "Z") (re.+ (re.range "a" "z")) (str.to.re "\x0a") (re.opt (str.to.re "i")) (str.to.re "e") (re.opt (str.to.re "a")) (re.opt (str.to.re "u")) (re.opt (re.union (str.to.re "r") (str.to.re "(") (str.to.re "e") (str.to.re ")") (str.to.re "?") (str.to.re "|") (str.to.re "x"))))))
(check-sat)
