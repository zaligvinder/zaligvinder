(declare-const X String)
; /\x2ewpd([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.wpd") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; Word\s+ExploiterSchwindler\x2Fr\x2Fkeys\x2Fkeys
(assert (not (str.in.re X (re.++ (str.to.re "Word") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ExploiterSchwindler/r/keys/keys\x0a")))))
(check-sat)
