(declare-const X String)
; /\x2em4v([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.m4v") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
(check-sat)
