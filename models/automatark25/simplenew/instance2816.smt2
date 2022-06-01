(declare-const X String)
; http\s+Host\u{3A}[^\n\r]*WinInet3Azopabora\u{2E}info\u{2F}notifier\u{2F}User-Agent\u{3A}
(assert (str.in_re X (re.++ (str.to_re "http") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "WinInet3Azopabora.info/notifier/User-Agent:\u{a}"))))
(check-sat)
