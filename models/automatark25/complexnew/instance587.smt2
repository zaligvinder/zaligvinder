(declare-const X String)
; ok\*\-\*PasswordAgent\x3Cchat\x3E
(assert (str.in.re X (str.to.re "ok*-*PasswordAgent<chat>\x1b\x0a")))
; ('{2})*([^'\r\n]*)('{2})*([^'\r\n]*)('{2})*
(assert (not (str.in.re X (re.++ (re.* ((_ re.loop 2 2) (str.to.re "'"))) (re.* (re.union (str.to.re "'") (str.to.re "\x0d") (str.to.re "\x0a"))) (re.* ((_ re.loop 2 2) (str.to.re "'"))) (re.* (re.union (str.to.re "'") (str.to.re "\x0d") (str.to.re "\x0a"))) (re.* ((_ re.loop 2 2) (str.to.re "'"))) (str.to.re "\x0a")))))
(check-sat)
