(declare-const X String)
; /filename=[^\n]*\x2ejpf/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".jpf/i\x0a"))))
; Host\x3AtoUser-Agent\x3AClientsConnected-
(assert (str.in.re X (str.to.re "Host:toUser-Agent:ClientsConnected-\x0a")))
; /\x2easx([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.asx") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; /filename=[^\n]*\x2egif/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".gif/i\x0a")))))
(check-sat)
