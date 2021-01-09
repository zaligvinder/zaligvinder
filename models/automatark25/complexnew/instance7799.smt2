(declare-const X String)
; /\x2emp4([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.mp4") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; Yeah\!User-Agent\x3a
(assert (str.in.re X (str.to.re "Yeah!User-Agent:\x0a")))
(check-sat)
