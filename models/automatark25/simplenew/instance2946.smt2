(declare-const X String)
; ^[A]$|^[C]$|^[D]$|^[F]$|^[H]$|^[K]$|^[L]$|^[M]$|^[O]$|^[P]$
(assert (str.in.re X (re.union (str.to.re "A") (str.to.re "C") (str.to.re "D") (str.to.re "F") (str.to.re "H") (str.to.re "K") (str.to.re "L") (str.to.re "M") (str.to.re "O") (str.to.re "P\x0a"))))
(check-sat)
