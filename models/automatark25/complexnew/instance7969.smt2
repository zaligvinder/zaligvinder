(declare-const X String)
; \x2Ftoolbar\x2F\d+www\x2Ericercadoppia\x2EcomPALTALKSubject\x3A
(assert (str.in.re X (re.++ (str.to.re "/toolbar/") (re.+ (re.range "0" "9")) (str.to.re "www.ricercadoppia.comPALTALKSubject:\x0a"))))
; /\x28\x3f\x3d[^)]{300}/
(assert (not (str.in.re X (re.++ (str.to.re "/(?=") ((_ re.loop 300 300) (re.comp (str.to.re ")"))) (str.to.re "/\x0a")))))
(check-sat)
