(declare-const X String)
; /[?&]filename=[^&]*?\x2e\x2e\x2f/Ui
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "?") (str.to.re "&")) (str.to.re "filename=") (re.* (re.comp (str.to.re "&"))) (str.to.re "..//Ui\x0a")))))
(check-sat)
