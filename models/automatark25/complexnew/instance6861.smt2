(declare-const X String)
; /filename=[^\n]*\u{2e}ht3/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".ht3/i\u{a}")))))
; ref\u{3D}\u{25}user\u{5F}id\s+X-Mailer\u{3a}SpyBuddyUser-Agent\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "ref=%user_id") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "X-Mailer:\u{13}SpyBuddyUser-Agent:\u{a}")))))
; www\u{2E}onetoolbar\u{2E}comcommunity
(assert (str.in_re X (str.to_re "www.onetoolbar.comcommunity\u{a}")))
(check-sat)
