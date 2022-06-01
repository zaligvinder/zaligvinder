(declare-const X String)
; e(vi?)?
(assert (not (str.in_re X (re.++ (str.to_re "e") (re.opt (re.++ (str.to_re "v") (re.opt (str.to_re "i")))) (str.to_re "\u{a}")))))
(check-sat)
