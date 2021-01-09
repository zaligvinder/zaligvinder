(declare-const X String)
; User-Agent\x3AUser-Agent\x3AHost\x3ASoftActivityYeah\!
(assert (not (str.in.re X (str.to.re "User-Agent:User-Agent:Host:SoftActivity\x13Yeah!\x0a"))))
; /\x2ewmv([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.wmv") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
(check-sat)
