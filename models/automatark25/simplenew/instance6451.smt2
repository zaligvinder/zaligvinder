(declare-const X String)
; ^[-+]?[1-9]\d*\.?[0]*$
(assert (not (str.in.re X (re.++ (re.opt (re.union (str.to.re "-") (str.to.re "+"))) (re.range "1" "9") (re.* (re.range "0" "9")) (re.opt (str.to.re ".")) (re.* (str.to.re "0")) (str.to.re "\x0a")))))
(check-sat)
