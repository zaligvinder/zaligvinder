(declare-const X String)
; ^[A][Z](.?)[0-9]{4}$
(assert (str.in.re X (re.++ (str.to.re "AZ") (re.opt re.allchar) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
