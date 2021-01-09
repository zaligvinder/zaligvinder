(declare-const X String)
; ^(.|\r|\n){1,10}$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 10) (re.union re.allchar (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "\x0a")))))
(check-sat)
