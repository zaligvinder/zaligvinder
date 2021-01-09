(declare-const X String)
; ^(1?)(-| ?)(\()?([0-9]{3})(\)|-| |\)-|\) )?([0-9]{3})(-| )?([0-9]{4}|[0-9]{4})$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "1")) (re.union (str.to.re "-") (re.opt (str.to.re " "))) (re.opt (str.to.re "(")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re ")") (str.to.re "-") (str.to.re " ") (str.to.re ")-") (str.to.re ") "))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re " "))) (re.union ((_ re.loop 4 4) (re.range "0" "9")) ((_ re.loop 4 4) (re.range "0" "9"))) (str.to.re "\x0a")))))
; securityon\x3AHost\x3ARedirector\x22ServerHost\x3A
(assert (not (str.in.re X (str.to.re "securityon:Host:Redirector\x22ServerHost:\x0a"))))
(check-sat)
