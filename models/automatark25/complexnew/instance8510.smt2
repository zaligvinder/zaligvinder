(declare-const X String)
; \u{18}\u{16}\dsearch\u{2e}conduit\u{2e}com\u{3C}logs\u{40}logs\u{2E}com\u{3E}
(assert (str.in_re X (re.++ (str.to_re "\u{18}\u{16}") (re.range "0" "9") (str.to_re "search.conduit.com<logs@logs.com>\u{a}"))))
; Host\u{3a}[^\n\r]*snprtz\u{7C}dialno\s+Agent\s+Host\u{3A}User-Agent\u{3A}\.cfgUser-Agent\u{3A}xbqyosoe\u{2f}cpvm
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "snprtz|dialno") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Agent") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:User-Agent:.cfgUser-Agent:xbqyosoe/cpvm\u{a}")))))
(check-sat)
