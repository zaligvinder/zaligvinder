(declare-const X String)
; ^[ISBN]{4}[ ]{0,1}[0-9]{1}[-]{1}[0-9]{3}[-]{1}[0-9]{5}[-]{1}[0-9]{0,1}$
(assert (str.in.re X (re.++ ((_ re.loop 4 4) (re.union (str.to.re "I") (str.to.re "S") (str.to.re "B") (str.to.re "N"))) (re.opt (str.to.re " ")) ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 1 1) (str.to.re "-")) ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 1 1) (str.to.re "-")) ((_ re.loop 5 5) (re.range "0" "9")) ((_ re.loop 1 1) (str.to.re "-")) (re.opt (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
