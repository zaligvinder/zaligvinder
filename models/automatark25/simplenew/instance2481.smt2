(declare-const X String)
; /[^\n -~\r]{4}/P
(assert (not (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 4 4) (re.union (str.to.re "\x0a") (re.range " " "~") (str.to.re "\x0d"))) (str.to.re "/P\x0a")))))
(check-sat)
