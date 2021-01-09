(declare-const X String)
; /\x2exbm([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.xbm") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; GmbH\x2FcommunicatortbHost\x3AUser-Agent\x3Aadblock\x2Elinkz\x2Ecom
(assert (str.in.re X (str.to.re "GmbH/communicatortbHost:User-Agent:adblock.linkz.com\x0a")))
(check-sat)
