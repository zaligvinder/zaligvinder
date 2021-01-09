(declare-const X String)
; ([oO0]*)([|:;=X^])([-']*)([)(oO0\]\[DPp*>X^@])
(assert (str.in.re X (re.++ (re.* (re.union (str.to.re "o") (str.to.re "O") (str.to.re "0"))) (re.union (str.to.re "|") (str.to.re ":") (str.to.re ";") (str.to.re "=") (str.to.re "X") (str.to.re "^")) (re.* (re.union (str.to.re "-") (str.to.re "'"))) (re.union (str.to.re ")") (str.to.re "(") (str.to.re "o") (str.to.re "O") (str.to.re "0") (str.to.re "]") (str.to.re "[") (str.to.re "D") (str.to.re "P") (str.to.re "p") (str.to.re "*") (str.to.re ">") (str.to.re "X") (str.to.re "^") (str.to.re "@")) (str.to.re "\x0a"))))
; ^L[a-zA-Z0-9]{26,33}$
(assert (not (str.in.re X (re.++ (str.to.re "L") ((_ re.loop 26 33) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "\x0a")))))
(check-sat)
