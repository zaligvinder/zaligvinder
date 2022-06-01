(declare-const X String)
; GmbH\u{2F}communicatortbHost\u{3A}User-Agent\u{3A}adblock\u{2E}linkz\u{2E}com
(assert (not (str.in_re X (str.to_re "GmbH/communicatortbHost:User-Agent:adblock.linkz.com\u{a}"))))
(check-sat)
