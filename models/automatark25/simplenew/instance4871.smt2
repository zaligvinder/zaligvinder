(declare-const X String)
; ^\d*\.?((25)|(50)|(5)|(75)|(0)|(00))?$
(assert (not (str.in.re X (re.++ (re.* (re.range "0" "9")) (re.opt (str.to.re ".")) (re.opt (re.union (str.to.re "25") (str.to.re "50") (str.to.re "5") (str.to.re "75") (str.to.re "0") (str.to.re "00"))) (str.to.re "\x0a")))))
(check-sat)
