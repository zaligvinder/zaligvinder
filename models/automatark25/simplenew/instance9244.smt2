(declare-const X String)
; /filename=[^\n]*\x2ejif/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".jif/i\x0a")))))
(check-sat)
