(declare-const X String)
; (<b>)([^<>]+)(</b>)
(assert (not (str.in.re X (re.++ (str.to.re "<b>") (re.+ (re.union (str.to.re "<") (str.to.re ">"))) (str.to.re "</b>\x0a")))))
(check-sat)
