(declare-const X String)
; ^[ABCGHJMPQRTWXYZ]$
(assert (not (str.in.re X (re.++ (re.union (str.to.re "A") (str.to.re "B") (str.to.re "C") (str.to.re "G") (str.to.re "H") (str.to.re "J") (str.to.re "M") (str.to.re "P") (str.to.re "Q") (str.to.re "R") (str.to.re "T") (str.to.re "W") (str.to.re "X") (str.to.re "Y") (str.to.re "Z")) (str.to.re "\x0a")))))
(check-sat)
