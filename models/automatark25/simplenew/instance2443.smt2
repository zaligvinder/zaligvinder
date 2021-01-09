(declare-const X String)
; ^([^\s]){5,12}$
(assert (str.in.re X (re.++ ((_ re.loop 5 12) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a"))))
(check-sat)
