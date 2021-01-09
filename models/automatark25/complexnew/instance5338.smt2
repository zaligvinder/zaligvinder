(declare-const X String)
; ^\d(\.\d{1,2})?$
(assert (str.in.re X (re.++ (re.range "0" "9") (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (str.to.re "\x0a"))))
; ^[-+]?(\d?\d?\d?,?)?(\d{3}\,?)*$
(assert (str.in.re X (re.++ (re.opt (re.union (str.to.re "-") (str.to.re "+"))) (re.opt (re.++ (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (re.opt (str.to.re ",")))) (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re ",")))) (str.to.re "\x0a"))))
; securityon\x3AHost\x3ARedirector\x22ServerHost\x3A
(assert (str.in.re X (str.to.re "securityon:Host:Redirector\x22ServerHost:\x0a")))
(check-sat)
