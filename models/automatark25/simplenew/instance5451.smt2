(declare-const X String)
; ^M{0,1}T{0,1}W{0,1}(TH){0,1}F{0,1}S{0,1}(SU){0,1}$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "M")) (re.opt (str.to.re "T")) (re.opt (str.to.re "W")) (re.opt (str.to.re "TH")) (re.opt (str.to.re "F")) (re.opt (str.to.re "S")) (re.opt (str.to.re "SU")) (str.to.re "\x0a")))))
(check-sat)
