(declare-const X String)
; (IE-?)?[0-9][0-9A-Z\+\*][0-9]{5}[A-Z]
(assert (str.in.re X (re.++ (re.opt (re.++ (str.to.re "IE") (re.opt (str.to.re "-")))) (re.range "0" "9") (re.union (re.range "0" "9") (re.range "A" "Z") (str.to.re "+") (str.to.re "*")) ((_ re.loop 5 5) (re.range "0" "9")) (re.range "A" "Z") (str.to.re "\x0a"))))
(check-sat)
