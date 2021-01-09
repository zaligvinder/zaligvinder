(declare-const X String)
; (FR-?)?[0-9A-Z]{2}\ ?[0-9]{9}
(assert (not (str.in.re X (re.++ (re.opt (re.++ (str.to.re "FR") (re.opt (str.to.re "-")))) ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "Z"))) (re.opt (str.to.re " ")) ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
