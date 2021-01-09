(declare-const X String)
; [0][^0]|([^0]{1}(.){1})|[^0]*
(assert (not (str.in.re X (re.union (re.++ (str.to.re "0") (re.comp (str.to.re "0"))) (re.++ ((_ re.loop 1 1) (re.comp (str.to.re "0"))) ((_ re.loop 1 1) re.allchar)) (re.++ (re.* (re.comp (str.to.re "0"))) (str.to.re "\x0a"))))))
; 100013Agentsvr\x5E\x5EMerlinIPBeta\s\x3E\x3C
(assert (not (str.in.re X (re.++ (str.to.re "100013Agentsvr^^Merlin\x13IPBeta") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "><\x0a")))))
; AgentHWAEUser-Agent\x3A
(assert (not (str.in.re X (str.to.re "AgentHWAEUser-Agent:\x0a"))))
(check-sat)
