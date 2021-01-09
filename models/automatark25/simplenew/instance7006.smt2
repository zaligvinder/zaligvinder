(declare-const X String)
; /\x2exul([\?\x5c\x2f]|$)/Umsi
(assert (not (str.in.re X (re.++ (str.to.re "/.xul") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/Umsi\x0a")))))
(check-sat)
