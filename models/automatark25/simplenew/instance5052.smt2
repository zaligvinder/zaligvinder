(declare-const X String)
; ^\.{0,2}[\/\\]
(assert (not (str.in.re X (re.++ ((_ re.loop 0 2) (str.to.re ".")) (re.union (str.to.re "/") (str.to.re "\x5c")) (str.to.re "\x0a")))))
(check-sat)
