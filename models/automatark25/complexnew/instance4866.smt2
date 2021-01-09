(declare-const X String)
; /\x2ewmv([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.wmv") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; \x7D\x7BPort\x3AHost\x3Amqnqgijmng\x2fojNavhelperUser-Agent\x3A
(assert (not (str.in.re X (str.to.re "}{Port:Host:mqnqgijmng/ojNavhelperUser-Agent:\x0a"))))
(check-sat)
