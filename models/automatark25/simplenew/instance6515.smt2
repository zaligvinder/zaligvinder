(declare-const X String)
; \x7croogoo\x7cTestiufilfwulmfi\x2friuf\.lioHeaders
(assert (not (str.in.re X (str.to.re "|roogoo|Testiufilfwulmfi/riuf.lioHeaders\x0a"))))
(check-sat)
