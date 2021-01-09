(declare-const X String)
; ^.{4,8}$
(assert (str.in.re X (re.++ ((_ re.loop 4 8) re.allchar) (str.to.re "\x0a"))))
(check-sat)
