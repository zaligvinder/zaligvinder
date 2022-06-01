(declare-const X String)
; SAccsearchresltOnline100013Agentsvr\u{5E}\u{5E}Merlin
(assert (not (str.in_re X (str.to_re "SAccsearchresltOnline100013Agentsvr^^Merlin\u{13}\u{a}"))))
(check-sat)
