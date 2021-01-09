(declare-const X String)
; /\x28\x3f\x3d[^)]{300}/
(assert (str.in.re X (re.++ (str.to.re "/(?=") ((_ re.loop 300 300) (re.comp (str.to.re ")"))) (str.to.re "/\x0a"))))
(check-sat)
