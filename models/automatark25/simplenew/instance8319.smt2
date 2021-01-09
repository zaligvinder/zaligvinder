(declare-const X String)
; /filename=[^\n]*\x2ecy3/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".cy3/i\x0a"))))
(check-sat)
