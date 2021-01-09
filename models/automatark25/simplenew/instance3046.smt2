(declare-const X String)
; ^(.|\n){0,16}$
(assert (str.in.re X (re.++ ((_ re.loop 0 16) (re.union re.allchar (str.to.re "\x0a"))) (str.to.re "\x0a"))))
(check-sat)
