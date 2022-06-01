(declare-const X String)
; Host\u{3A}[^\n\r]*Travel[^\n\r]*From\u{3A}www\u{2E}ZSearchResults\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Travel") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "From:www.ZSearchResults.com\u{13}\u{a}"))))
; snprtz\u{7C}dialno\s+3Awww\u{2e}urlblaze\u{2e}netulmxct\u{2f}mqoyc
(assert (not (str.in_re X (re.++ (str.to_re "snprtz|dialno") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "3Awww.urlblaze.netulmxct/mqoyc\u{a}")))))
; /filename=[^\n]*\u{2e}ses/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".ses/i\u{a}")))))
; User-Agent\u{3A}X-Mailer\u{3a}HWAEHost\u{3A}Host\u{3A}Host\u{3a}StableUser-Agent\u{3A}User-Agent\u{3A}www\u{2e}navisearch\u{2e}net
(assert (not (str.in_re X (str.to_re "User-Agent:X-Mailer:\u{13}HWAEHost:Host:Host:StableUser-Agent:User-Agent:www.navisearch.net\u{a}"))))
(check-sat)
