(declare-const X String)
; ^[1]$|^[3]$|^[4]$|^[6]$|^[1]0$
(assert (str.in.re X (re.union (str.to.re "1") (str.to.re "3") (str.to.re "4") (str.to.re "6") (str.to.re "10\x0a"))))
(check-sat)
