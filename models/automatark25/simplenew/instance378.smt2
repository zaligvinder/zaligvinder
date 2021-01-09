(declare-const X String)
; ^.{0,0}
(assert (str.in.re X (re.++ ((_ re.loop 0 0) re.allchar) (str.to.re "\x0a"))))
(check-sat)
