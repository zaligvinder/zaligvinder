(declare-const X String)
; /\x2ehlp([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.hlp") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; User-Agent\x3AServerHost\x3A
(assert (not (str.in.re X (str.to.re "User-Agent:ServerHost:\x0a"))))
(check-sat)
