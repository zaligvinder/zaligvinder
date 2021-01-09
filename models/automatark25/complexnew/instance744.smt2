(declare-const X String)
; Subject\x3aSpywareSpyBuddy
(assert (not (str.in.re X (str.to.re "Subject:SpywareSpyBuddy\x0a"))))
; [AaEeIiOoUuYy]
(assert (str.in.re X (re.++ (re.union (str.to.re "A") (str.to.re "a") (str.to.re "E") (str.to.re "e") (str.to.re "I") (str.to.re "i") (str.to.re "O") (str.to.re "o") (str.to.re "U") (str.to.re "u") (str.to.re "Y") (str.to.re "y")) (str.to.re "\x0a"))))
(check-sat)
