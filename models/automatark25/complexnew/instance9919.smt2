(declare-const X String)
; \x2FcommunicatortbHost\x3a
(assert (not (str.in.re X (str.to.re "/communicatortbHost:\x0a"))))
; /\x2ep2g([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.p2g") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
(check-sat)
