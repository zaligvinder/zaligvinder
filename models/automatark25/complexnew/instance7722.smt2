(declare-const X String)
; ('{2})*([^'\r\n]*)('{2})*([^'\r\n]*)('{2})*
(assert (str.in.re X (re.++ (re.* ((_ re.loop 2 2) (str.to.re "'"))) (re.* (re.union (str.to.re "'") (str.to.re "\x0d") (str.to.re "\x0a"))) (re.* ((_ re.loop 2 2) (str.to.re "'"))) (re.* (re.union (str.to.re "'") (str.to.re "\x0d") (str.to.re "\x0a"))) (re.* ((_ re.loop 2 2) (str.to.re "'"))) (str.to.re "\x0a"))))
; /\x2efon([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.fon") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
(check-sat)
