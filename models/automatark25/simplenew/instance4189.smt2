(declare-const X String)
; ^(.){0,20}$
(assert (not (str.in.re X (re.++ ((_ re.loop 0 20) re.allchar) (str.to.re "\x0a")))))
(check-sat)
