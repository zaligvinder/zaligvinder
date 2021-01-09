(declare-const X String)
; /filename=[^\n]*\x2ewvx/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".wvx/i\x0a"))))
(check-sat)
