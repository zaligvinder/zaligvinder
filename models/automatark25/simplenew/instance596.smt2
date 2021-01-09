(declare-const X String)
; ^((0[1-9])|(1[0-2]))$
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re "\x0a")))))
(check-sat)
