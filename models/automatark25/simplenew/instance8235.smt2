(declare-const X String)
; WebConnLibNETObserveUser-Agent\x3Ahave100013Agentsvr\x5E\x5EMerlin
(assert (not (str.in.re X (str.to.re "WebConnLibNETObserveUser-Agent:have100013Agentsvr^^Merlin\x13\x0a"))))
(check-sat)
