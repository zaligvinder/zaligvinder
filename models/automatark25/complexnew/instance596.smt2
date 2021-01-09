(declare-const X String)
; User-Agent\x3AServerHost\x3A
(assert (not (str.in.re X (str.to.re "User-Agent:ServerHost:\x0a"))))
; /\x2etga([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.tga") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
(check-sat)
