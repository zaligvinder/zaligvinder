(declare-const X String)
; /\x2ej2k([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.j2k") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
(check-sat)
