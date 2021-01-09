(declare-const X String)
; [0-9]{4}[A-Z]{2}
(assert (not (str.in.re X (re.++ ((_ re.loop 4 4) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "A" "Z")) (str.to.re "\x0a")))))
; ^[-+]?\d*\.?\d*$
(assert (not (str.in.re X (re.++ (re.opt (re.union (str.to.re "-") (str.to.re "+"))) (re.* (re.range "0" "9")) (re.opt (str.to.re ".")) (re.* (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
