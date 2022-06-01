(declare-const X String)
; 100013Agentsvr\u{5E}\u{5E}MerlinIPBeta\s\u{3E}\u{3C}
(assert (not (str.in_re X (re.++ (str.to_re "100013Agentsvr^^Merlin\u{13}IPBeta") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "><\u{a}")))))
(check-sat)
