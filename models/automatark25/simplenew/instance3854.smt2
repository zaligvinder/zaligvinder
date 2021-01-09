(declare-const X String)
; ^\.{1}
(assert (str.in.re X (re.++ ((_ re.loop 1 1) (str.to.re ".")) (str.to.re "\x0a"))))
(check-sat)
