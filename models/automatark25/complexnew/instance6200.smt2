(declare-const X String)
; ^
(assert (not (str.in.re X (str.to.re "\x0a"))))
; /filename=[^\n]*\x2etga/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".tga/i\x0a"))))
(check-sat)
