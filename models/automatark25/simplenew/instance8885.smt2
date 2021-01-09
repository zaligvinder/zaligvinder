(declare-const X String)
; ^[0-9]*[02468]$
(assert (not (str.in.re X (re.++ (re.* (re.range "0" "9")) (re.union (str.to.re "0") (str.to.re "2") (str.to.re "4") (str.to.re "6") (str.to.re "8")) (str.to.re "\x0a")))))
(check-sat)
