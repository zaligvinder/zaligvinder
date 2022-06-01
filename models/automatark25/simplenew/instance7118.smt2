(declare-const X String)
; offers\u{2E}bullseye-network\u{2E}com\s+news[^\n\r]*WatcherUser-Agent\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "offers.bullseye-network.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "news") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "WatcherUser-Agent:\u{a}")))))
(check-sat)
