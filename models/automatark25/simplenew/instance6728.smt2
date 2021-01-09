(declare-const X String)
; ^([6011]{4})([0-9]{12})$
(assert (not (str.in.re X (re.++ ((_ re.loop 4 4) (re.union (str.to.re "6") (str.to.re "0") (str.to.re "1"))) ((_ re.loop 12 12) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
