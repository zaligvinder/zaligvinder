(declare-const X String)
; xbqyosoe\x2fcpvmwww\x2eurlblaze\x2enetconfigINTERNAL\.ini
(assert (str.in.re X (str.to.re "xbqyosoe/cpvmwww.urlblaze.netconfigINTERNAL.ini\x0a")))
; Toolbar[^\n\r]*url=\d+Host\x3AWelcome\x2FcommunicatortbGateCrasher
(assert (str.in.re X (re.++ (str.to.re "Toolbar") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "url=") (re.+ (re.range "0" "9")) (str.to.re "Host:Welcome/communicatortbGateCrasher\x0a"))))
; /\x2ekvl([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.kvl") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
(check-sat)
