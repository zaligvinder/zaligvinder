(declare-const X String)
; ^\${1}[a-z]{1}[a-z\d]{0,6}$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (str.to.re "$")) ((_ re.loop 1 1) (re.range "a" "z")) ((_ re.loop 0 6) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "\x0a")))))
(check-sat)
