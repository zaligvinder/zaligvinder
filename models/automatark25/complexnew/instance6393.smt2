(declare-const X String)
; /\x2ejfif?([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.jfi") (re.opt (str.to.re "f")) (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; Toolbar[^\n\r]*url=\d+Host\x3AWelcome\x2FcommunicatortbGateCrasher
(assert (str.in.re X (re.++ (str.to.re "Toolbar") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "url=") (re.+ (re.range "0" "9")) (str.to.re "Host:Welcome/communicatortbGateCrasher\x0a"))))
; doarauzeraqf\x2fvvv\.ul
(assert (not (str.in.re X (str.to.re "doarauzeraqf/vvv.ul\x0a"))))
(check-sat)
