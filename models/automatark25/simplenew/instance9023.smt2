(declare-const X String)
; ^<\!\-\-(.*)+(\/){0,1}\-\->$
(assert (not (str.in.re X (re.++ (str.to.re "<!--") (re.+ (re.* re.allchar)) (re.opt (str.to.re "/")) (str.to.re "-->\x0a")))))
(check-sat)
