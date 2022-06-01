(declare-const X String)
; /exploit\/(Exploit(App)?|Loader)\.class/ims
(assert (str.in_re X (re.++ (str.to_re "/exploit/") (re.union (re.++ (str.to_re "Exploit") (re.opt (str.to_re "App"))) (str.to_re "Loader")) (str.to_re ".class/ims\u{a}"))))
(check-sat)
