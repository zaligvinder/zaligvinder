(declare-const X String)
; ^(\()?(787|939)(\)|-)?([0-9]{3})(-)?([0-9]{4}|[0-9]{4})$
(assert (str.in.re X (re.++ (re.opt (str.to.re "(")) (re.union (str.to.re "787") (str.to.re "939")) (re.opt (re.union (str.to.re ")") (str.to.re "-"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re "-")) (re.union ((_ re.loop 4 4) (re.range "0" "9")) ((_ re.loop 4 4) (re.range "0" "9"))) (str.to.re "\x0a"))))
(check-sat)
