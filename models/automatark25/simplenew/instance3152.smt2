(declare-const X String)
; ([Cc][Hh][Aa][Nn][Dd][Aa][Nn].*?)
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.union (str.to.re "C") (str.to.re "c")) (re.union (str.to.re "H") (str.to.re "h")) (re.union (str.to.re "A") (str.to.re "a")) (re.union (str.to.re "N") (str.to.re "n")) (re.union (str.to.re "D") (str.to.re "d")) (re.union (str.to.re "A") (str.to.re "a")) (re.union (str.to.re "N") (str.to.re "n")) (re.* re.allchar))))
(check-sat)
