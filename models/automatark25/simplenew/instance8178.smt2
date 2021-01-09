(declare-const X String)
; /filename=[^\n]*\x2em4p/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".m4p/i\x0a"))))
(check-sat)
