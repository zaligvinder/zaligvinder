(declare-const X String)
; Host\x3A\s+Agentbody=\x2521\x2521\x2521Optix
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Agentbody=%21%21%21Optix\x13\x0a"))))
; Agent\s+\x2Ftoolbar\x2Fico\x2F
(assert (not (str.in.re X (re.++ (str.to.re "Agent") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/toolbar/ico/\x0a")))))
(check-sat)
