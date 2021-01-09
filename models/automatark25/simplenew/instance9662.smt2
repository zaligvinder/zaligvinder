(declare-const X String)
; /listoverridecount([2345678]|[019][0-9])/i
(assert (not (str.in.re X (re.++ (str.to.re "/listoverridecount") (re.union (re.++ (re.union (str.to.re "0") (str.to.re "1") (str.to.re "9")) (re.range "0" "9")) (str.to.re "2") (str.to.re "3") (str.to.re "4") (str.to.re "5") (str.to.re "6") (str.to.re "7") (str.to.re "8")) (str.to.re "/i\x0a")))))
(check-sat)
