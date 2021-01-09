(declare-const X String)
; /\x2ef4v([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.f4v") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
(check-sat)
