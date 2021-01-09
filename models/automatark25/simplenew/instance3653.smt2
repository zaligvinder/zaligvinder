(declare-const X String)
; ^([9]{1})([234789]{1})([0-9]{8})$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (str.to.re "9")) ((_ re.loop 1 1) (re.union (str.to.re "2") (str.to.re "3") (str.to.re "4") (str.to.re "7") (str.to.re "8") (str.to.re "9"))) ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
