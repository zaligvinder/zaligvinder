(declare-const X String)
; ((IT|LV)-?)?[0-9]{11}
(assert (not (str.in.re X (re.++ (re.opt (re.++ (re.union (str.to.re "IT") (str.to.re "LV")) (re.opt (str.to.re "-")))) ((_ re.loop 11 11) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
