(declare-const X String)
; /filename=[^\n]*\x2emax/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".max/i\x0a")))))
; \x7croogoo\x7cTestiufilfwulmfi\x2friuf\.lioHeaders
(assert (not (str.in.re X (str.to.re "|roogoo|Testiufilfwulmfi/riuf.lioHeaders\x0a"))))
(check-sat)
