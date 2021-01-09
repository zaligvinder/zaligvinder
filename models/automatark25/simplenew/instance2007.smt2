(declare-const X String)
; /^\x2f[a-z\d]{1,8}\.exe$/Ui
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 1 8) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".exe/Ui\x0a"))))
(check-sat)
