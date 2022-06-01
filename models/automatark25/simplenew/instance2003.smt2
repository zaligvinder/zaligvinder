(declare-const X String)
; \u{7D}\u{7B}User\u{3A}\d+Host\u{3A}User-Agent\u{3A}adblock\u{2E}linkz\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "}{User:") (re.+ (re.range "0" "9")) (str.to_re "Host:User-Agent:adblock.linkz.com\u{a}"))))
(check-sat)
