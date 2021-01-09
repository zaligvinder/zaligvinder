(declare-const X String)
; Host\x3a[^\n\r]*snprtz\x7Cdialno\s+Agent\s+Host\x3AUser-Agent\x3A\.cfgUser-Agent\x3Axbqyosoe\x2fcpvm
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "snprtz|dialno") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Agent") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:User-Agent:.cfgUser-Agent:xbqyosoe/cpvm\x0a"))))
(check-sat)
