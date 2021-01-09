(declare-const X String)
; /^.{27}/sR
(assert (not (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 27 27) re.allchar) (str.to.re "/sR\x0a")))))
(check-sat)
