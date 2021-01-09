(declare-const X String)
; /filename=[^\n]*\x2elnk/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".lnk/i\x0a"))))
(check-sat)
