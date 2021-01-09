(declare-const X String)
; ^\d*\.?(((5)|(0)|))?$
(assert (not (str.in.re X (re.++ (re.* (re.range "0" "9")) (re.opt (str.to.re ".")) (re.opt (re.union (str.to.re "5") (str.to.re "0"))) (str.to.re "\x0a")))))
(check-sat)
