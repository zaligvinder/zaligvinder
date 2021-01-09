(declare-const X String)
; /\x2emsi([\?\x5c\x2f]|$)/miU
(assert (str.in.re X (re.++ (str.to.re "/.msi") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/miU\x0a"))))
(check-sat)
