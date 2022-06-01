(declare-const X String)
; Host\u{3A}\s+Online100013Agentsvr\u{5E}\u{5E}Merlin
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Online100013Agentsvr^^Merlin\u{13}\u{a}")))))
; www\u{2E}pcsentinelsoftware\u{2E}com
(assert (str.in_re X (str.to_re "www.pcsentinelsoftware.com\u{a}")))
; encoder\s%3fsearchresltX-Mailer\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "encoder") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "%3fsearchresltX-Mailer:\u{13}\u{a}")))))
(check-sat)
