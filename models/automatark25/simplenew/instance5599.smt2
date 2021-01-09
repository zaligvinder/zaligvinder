(declare-const X String)
; ([oO0]*)([|:;=X^])([-']*)([)(oO0\]\[DPp*>X^@])
(assert (str.in.re X (re.++ (re.* (re.union (str.to.re "o") (str.to.re "O") (str.to.re "0"))) (re.union (str.to.re "|") (str.to.re ":") (str.to.re ";") (str.to.re "=") (str.to.re "X") (str.to.re "^")) (re.* (re.union (str.to.re "-") (str.to.re "'"))) (re.union (str.to.re ")") (str.to.re "(") (str.to.re "o") (str.to.re "O") (str.to.re "0") (str.to.re "]") (str.to.re "[") (str.to.re "D") (str.to.re "P") (str.to.re "p") (str.to.re "*") (str.to.re ">") (str.to.re "X") (str.to.re "^") (str.to.re "@")) (str.to.re "\x0a"))))
(check-sat)
