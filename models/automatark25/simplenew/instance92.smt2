(declare-const X String)
; ^([012346789][0-9]{4})$
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.union (str.to.re "0") (str.to.re "1") (str.to.re "2") (str.to.re "3") (str.to.re "4") (str.to.re "6") (str.to.re "7") (str.to.re "8") (str.to.re "9")) ((_ re.loop 4 4) (re.range "0" "9")))))
(check-sat)
