(declare-const X String)
; /\x2eclass([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.class") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; [\x00-\x1F\x7F]
(assert (not (str.in.re X (re.++ (re.union (re.range "\x00" "\x1f") (str.to.re "\x7f")) (str.to.re "\x0a")))))
(check-sat)
