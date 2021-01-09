(declare-const X String)
; /filename=[^\n]*\x2ewma/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".wma/i\x0a")))))
; /[?&]filename=[^&]*?\x2e\x2e\x2f/Ui
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "?") (str.to.re "&")) (str.to.re "filename=") (re.* (re.comp (str.to.re "&"))) (str.to.re "..//Ui\x0a")))))
(check-sat)
