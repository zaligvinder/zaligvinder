(declare-const X String)
; Host\u{3a}[^\n\r]*snprtz\u{7C}dialno\s+Agent\s+Host\u{3A}User-Agent\u{3A}\.cfgUser-Agent\u{3A}xbqyosoe\u{2f}cpvm
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "snprtz|dialno") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Agent") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:User-Agent:.cfgUser-Agent:xbqyosoe/cpvm\u{a}")))))
; Host\u{3A}\d+zmnjgmomgbdz\u{2f}zzmw\.gzt%3ftoolbar\u{2E}i-lookup\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "zmnjgmomgbdz/zzmw.gzt%3ftoolbar.i-lookup.com\u{a}"))))
; log\=\u{7B}IP\u{3A}\d\u{2E}txt\s+Pcast\u{2E}dat\u{2E}Toolbar\u{7D}\u{7B}OS\u{3A}toolsbar\u{2E}kuaiso\u{2E}comHost\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "log={IP:") (re.range "0" "9") (str.to_re ".txt") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Pcast.dat.Toolbar}{OS:toolsbar.kuaiso.comHost:\u{a}")))))
; /\(\?[gimxs]{1,5}\)/
(assert (str.in_re X (re.++ (str.to_re "/(?") ((_ re.loop 1 5) (re.union (str.to_re "g") (str.to_re "i") (str.to_re "m") (str.to_re "x") (str.to_re "s"))) (str.to_re ")/\u{a}"))))
(check-sat)
