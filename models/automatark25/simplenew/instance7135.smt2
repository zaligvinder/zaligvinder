(declare-const X String)
; e(vi?)?
(assert (not (str.in.re X (re.++ (str.to.re "e") (re.opt (re.++ (str.to.re "v") (re.opt (str.to.re "i")))) (str.to.re "\x0a")))))
(check-sat)
