(declare-const X String)
; \x28BDLL\x29Googledll\x3F
(assert (str.in.re X (str.to.re "(BDLL)\x13Googledll?\x0a")))
(check-sat)
