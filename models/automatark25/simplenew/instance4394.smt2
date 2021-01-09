(declare-const X String)
; ((FI|HU|LU|MT|SI)-?)?[0-9]{8}
(assert (not (str.in.re X (re.++ (re.opt (re.++ (re.union (str.to.re "FI") (str.to.re "HU") (str.to.re "LU") (str.to.re "MT") (str.to.re "SI")) (re.opt (str.to.re "-")))) ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
