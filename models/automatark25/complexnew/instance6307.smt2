(declare-const X String)
; /\x2egif([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.gif") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; InformationAgentReferer\x3AClient
(assert (str.in.re X (str.to.re "InformationAgentReferer:Client\x0a")))
(check-sat)
