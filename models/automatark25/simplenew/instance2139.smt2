(declare-const X String)
; /[^\x20-\x7e\r\n]{3}/P
(assert (not (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 3 3) (re.union (re.range " " "~") (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "/P\x0a")))))
(check-sat)
