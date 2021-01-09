(declare-const X String)
; SAccsearchresltOnline100013Agentsvr\x5E\x5EMerlin
(assert (not (str.in.re X (str.to.re "SAccsearchresltOnline100013Agentsvr^^Merlin\x13\x0a"))))
(check-sat)
