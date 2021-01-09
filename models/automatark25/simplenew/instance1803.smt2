(declare-const X String)
; [0][^0]|([^0]{1}(.){1})|[^0]*
(assert (str.in.re X (re.union (re.++ (str.to.re "0") (re.comp (str.to.re "0"))) (re.++ ((_ re.loop 1 1) (re.comp (str.to.re "0"))) ((_ re.loop 1 1) re.allchar)) (re.++ (re.* (re.comp (str.to.re "0"))) (str.to.re "\x0a")))))
(check-sat)
