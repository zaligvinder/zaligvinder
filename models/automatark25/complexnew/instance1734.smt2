(declare-const X String)
; [\x00-\x1F\x7F]
(assert (str.in.re X (re.++ (re.union (re.range "\x00" "\x1f") (str.to.re "\x7f")) (str.to.re "\x0a"))))
; /\x2ejpg([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.jpg") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
(check-sat)
