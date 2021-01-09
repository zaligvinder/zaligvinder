(declare-const X String)
; /exploit\/(Exploit(App)?|Loader)\.class/ims
(assert (str.in.re X (re.++ (str.to.re "/exploit/") (re.union (re.++ (str.to.re "Exploit") (re.opt (str.to.re "App"))) (str.to.re "Loader")) (str.to.re ".class/ims\x0a"))))
(check-sat)
