(declare-const X String)
; .*[Oo0][Ee][Mm].*
(assert (str.in.re X (re.++ (re.* re.allchar) (re.union (str.to.re "O") (str.to.re "o") (str.to.re "0")) (re.union (str.to.re "E") (str.to.re "e")) (re.union (str.to.re "M") (str.to.re "m")) (re.* re.allchar) (str.to.re "\x0a"))))
(check-sat)
