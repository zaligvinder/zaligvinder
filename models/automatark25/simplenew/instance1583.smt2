(declare-const X String)
; SecureNet.*\x2Fsearchfast\x2F
(assert (not (str.in.re X (re.++ (str.to.re "SecureNet") (re.* re.allchar) (str.to.re "/searchfast/\x0a")))))
(check-sat)
