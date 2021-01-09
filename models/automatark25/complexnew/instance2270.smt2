(declare-const X String)
; /\x2eets([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.ets") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; /\/jorg\.html$/U
(assert (str.in.re X (str.to.re "//jorg.html/U\x0a")))
(check-sat)
