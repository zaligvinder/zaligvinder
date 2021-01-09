(declare-const X String)
; /\x28\x3f\x3d[^)]{300}/
(assert (not (str.in.re X (re.++ (str.to.re "/(?=") ((_ re.loop 300 300) (re.comp (str.to.re ")"))) (str.to.re "/\x0a")))))
; /filename=[^\n]*\x2ejpf/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".jpf/i\x0a")))))
(check-sat)
