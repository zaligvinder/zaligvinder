(declare-const X String)
; /\u{2e}xbm([\?\u{5c}\u{2f}]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.xbm") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; GmbH\u{2F}communicatortbHost\u{3A}User-Agent\u{3A}adblock\u{2E}linkz\u{2E}com
(assert (str.in_re X (str.to_re "GmbH/communicatortbHost:User-Agent:adblock.linkz.com\u{a}")))
(check-sat)
