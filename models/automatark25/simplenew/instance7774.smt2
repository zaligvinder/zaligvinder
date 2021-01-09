(declare-const X String)
; (.*\.([wW][mM][aA])|([mM][pP][3])$)
(assert (str.in.re X (re.++ (re.union (re.++ (re.* re.allchar) (str.to.re ".") (re.union (str.to.re "w") (str.to.re "W")) (re.union (str.to.re "m") (str.to.re "M")) (re.union (str.to.re "a") (str.to.re "A"))) (re.++ (re.union (str.to.re "m") (str.to.re "M")) (re.union (str.to.re "p") (str.to.re "P")) (str.to.re "3"))) (str.to.re "\x0a"))))
(check-sat)
