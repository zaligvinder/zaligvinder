(declare-const X String)
; Host\u{3a}searchresltwww\u{2E}wordiq\u{2E}comwww2\u{2e}instantbuzz\u{2e}com
(assert (str.in_re X (str.to_re "Host:searchresltwww.wordiq.com\u{1b}www2.instantbuzz.com\u{a}")))
; ref\u{3D}\u{25}user\u{5F}id\s+X-Mailer\u{3a}SpyBuddyUser-Agent\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "ref=%user_id") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "X-Mailer:\u{13}SpyBuddyUser-Agent:\u{a}")))))
; updates\u{5D}\u{25}20\u{5B}Port_NETObserve
(assert (not (str.in_re X (str.to_re "updates]%20[Port_NETObserve\u{a}"))))
(check-sat)
