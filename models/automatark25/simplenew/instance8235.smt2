(declare-const X String)
; WebConnLibNETObserveUser-Agent\u{3A}have100013Agentsvr\u{5E}\u{5E}Merlin
(assert (not (str.in_re X (str.to_re "WebConnLibNETObserveUser-Agent:have100013Agentsvr^^Merlin\u{13}\u{a}"))))
(check-sat)
