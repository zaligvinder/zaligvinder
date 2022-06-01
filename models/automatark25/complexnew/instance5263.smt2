(declare-const X String)
; SAccsearchresltOnline100013Agentsvr\u{5E}\u{5E}Merlin
(assert (not (str.in_re X (str.to_re "SAccsearchresltOnline100013Agentsvr^^Merlin\u{13}\u{a}"))))
; ^(\s*\d\s*){11}$
(assert (str.in_re X (re.++ ((_ re.loop 11 11) (re.++ (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.range "0" "9") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))))) (str.to_re "\u{a}"))))
; \u{3B}CIA\s+is\s+User-Agent\u{3A}cid=tb\u{2e}Cookie\u{3A}
(assert (str.in_re X (re.++ (str.to_re ";CIA") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "is") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:cid=tb.Cookie:\u{a}"))))
; tv\u{2E}180solutions\u{2E}comGirlFriendHost\u{3A}
(assert (str.in_re X (str.to_re "tv.180solutions.comGirlFriendHost:\u{a}")))
; (^[0-9]{0,10}$)
(assert (not (str.in_re X (re.++ ((_ re.loop 0 10) (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)
