(declare-const X String)
; /\x2ertf([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.rtf") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; ^([0-7])*$
(assert (str.in.re X (re.++ (re.* (re.range "0" "7")) (str.to.re "\x0a"))))
(check-sat)
