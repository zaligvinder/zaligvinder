(declare-const X String)
; /filename=[^\n]*\x2ef4a/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".f4a/i\x0a"))))
(check-sat)
