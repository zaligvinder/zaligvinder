(declare-const X String)
; 100013Agentsvr\x5E\x5EMerlinIPBeta\s\x3E\x3C
(assert (not (str.in.re X (re.++ (str.to.re "100013Agentsvr^^Merlin\x13IPBeta") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "><\x0a")))))
(check-sat)
