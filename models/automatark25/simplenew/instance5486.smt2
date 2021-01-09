(declare-const X String)
; $(\n|\r\n)
(assert (not (str.in.re X (re.++ (re.union (str.to.re "\x0a") (str.to.re "\x0d\x0a")) (str.to.re "\x0a")))))
(check-sat)
