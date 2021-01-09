(declare-const X String)
; ^(^N[BLSTU]$)|(^[AMN]B$)|(^[BQ]C$)|(^ON$)|(^PE$)|(^SK$)$
(assert (not (str.in.re X (re.union (re.++ (str.to.re "N") (re.union (str.to.re "B") (str.to.re "L") (str.to.re "S") (str.to.re "T") (str.to.re "U"))) (re.++ (re.union (str.to.re "A") (str.to.re "M") (str.to.re "N")) (str.to.re "B")) (re.++ (re.union (str.to.re "B") (str.to.re "Q")) (str.to.re "C")) (str.to.re "ON") (str.to.re "PE") (str.to.re "SK\x0a")))))
(check-sat)
