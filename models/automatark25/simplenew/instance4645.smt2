(declare-const X String)
; ^([0-9]{2})?((\([0-9]{2})\)|[0-9]{2})?([0-9]{3}|[0-9]{4})(\-)?[0-9]{4}$
(assert (str.in.re X (re.++ (re.opt ((_ re.loop 2 2) (re.range "0" "9"))) (re.opt (re.union (re.++ (str.to.re ")(") ((_ re.loop 2 2) (re.range "0" "9"))) ((_ re.loop 2 2) (re.range "0" "9")))) (re.union ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 4 4) (re.range "0" "9"))) (re.opt (str.to.re "-")) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
