(declare-const X String)
; ^.{2,}$
(assert (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 2 2) re.allchar) (re.* re.allchar))))
(check-sat)
