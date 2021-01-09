(declare-const X String)
; /\x2exfdl([\?\x5c\x2f]|$)/miU
(assert (str.in.re X (re.++ (str.to.re "/.xfdl") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/miU\x0a"))))
(check-sat)
