(declare-const X String)
; /\x2Esum([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.sum") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; ^([a-zA-Z])*$
(assert (not (str.in.re X (re.++ (re.* (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "\x0a")))))
; ^[0-9]{4} {0,1}[A-Z]{2}$
(assert (str.in.re X (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (str.to.re " ")) ((_ re.loop 2 2) (re.range "A" "Z")) (str.to.re "\x0a"))))
(check-sat)
