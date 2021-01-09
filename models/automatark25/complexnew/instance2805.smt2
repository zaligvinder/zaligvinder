(declare-const X String)
; /filename=[^\n]*\x2ejpeg/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".jpeg/i\x0a")))))
; /\x2ek3g([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.k3g") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
(check-sat)
