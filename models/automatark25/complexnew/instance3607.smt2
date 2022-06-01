(declare-const X String)
; ref\u{3D}\u{25}user\u{5F}id\s+X-Mailer\u{3a}SpyBuddyUser-Agent\u{3A}
(assert (str.in_re X (re.++ (str.to_re "ref=%user_id") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "X-Mailer:\u{13}SpyBuddyUser-Agent:\u{a}"))))
; Information.*Firewall\s+ised2k\u{c0}STATUS\u{c0}Server
(assert (str.in_re X (re.++ (str.to_re "Information") (re.* re.allchar) (str.to_re "Firewall") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ised2k\u{c0}STATUS\u{c0}Server\u{13}\u{a}"))))
(check-sat)
