(declare-const X String)
; (vi(v))?d
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "viv")) (str.to.re "d\x0a")))))
(check-sat)
