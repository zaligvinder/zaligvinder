(declare-const X String)
; \\[\\w{2}\\]
(assert (not (str.in.re X (re.++ (str.to.re "\x5c") (re.union (str.to.re "\x5c") (str.to.re "w") (str.to.re "{") (str.to.re "2") (str.to.re "}")) (str.to.re "\x0a")))))
; /\x2eeot([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.eot") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
(check-sat)
