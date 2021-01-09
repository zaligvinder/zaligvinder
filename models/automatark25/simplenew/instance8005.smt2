(declare-const X String)
; ^07[789]-\d{7}$
(assert (str.in.re X (re.++ (str.to.re "07") (re.union (str.to.re "7") (str.to.re "8") (str.to.re "9")) (str.to.re "-") ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
