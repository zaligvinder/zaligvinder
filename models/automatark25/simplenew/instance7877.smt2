(declare-const X String)
; (GB-?)?([1-9][0-9]{2}\ ?[0-9]{4}\ ?[0-9]{2})|([1-9][0-9]{2}\ ?[0-9]{4}\ ?[0-9]{2}\ ?[0-9]{3})|((GD|HA)[0-9]{3})
(assert (str.in.re X (re.union (re.++ (re.opt (re.++ (str.to.re "GB") (re.opt (str.to.re "-")))) (re.range "1" "9") ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (str.to.re " ")) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (str.to.re " ")) ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (re.range "1" "9") ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (str.to.re " ")) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (str.to.re " ")) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (str.to.re " ")) ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (str.to.re "\x0a") (re.union (str.to.re "GD") (str.to.re "HA")) ((_ re.loop 3 3) (re.range "0" "9"))))))
(check-sat)
