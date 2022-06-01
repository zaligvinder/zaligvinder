(declare-const X String)
; ^<\!\-\-(.*)+(\/){0,1}\-\->$
(assert (not (str.in_re X (re.++ (str.to_re "<!--") (re.+ (re.* re.allchar)) (re.opt (str.to_re "/")) (str.to_re "-->\u{a}")))))
(check-sat)
