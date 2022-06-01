(declare-const X String)
; ^M{0,1}T{0,1}W{0,1}(TH){0,1}F{0,1}S{0,1}(SU){0,1}$
(assert (str.in_re X (re.++ (re.opt (str.to_re "M")) (re.opt (str.to_re "T")) (re.opt (str.to_re "W")) (re.opt (str.to_re "TH")) (re.opt (str.to_re "F")) (re.opt (str.to_re "S")) (re.opt (str.to_re "SU")) (str.to_re "\u{a}"))))
(check-sat)
