(declare-const X String)
; RootviewNetControl\u{2E}Serverdata2\.activshopper\.com
(assert (str.in_re X (str.to_re "RootviewNetControl.Server\u{13}data2.activshopper.com\u{a}")))
; SpyAgent\d+sErver\s+User-Agent\u{3A}
(assert (str.in_re X (re.++ (str.to_re "SpyAgent") (re.+ (re.range "0" "9")) (str.to_re "sErver") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:\u{a}"))))
; Ts2\u{2F}\s+insertinfoSnakeUser-Agent\u{3A}
(assert (str.in_re X (re.++ (str.to_re "Ts2/") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "insertinfoSnakeUser-Agent:\u{a}"))))
; Referer\u{3A}User-Agent\u{3A}From\u{3A}User-Agent\u{3A}adfsgecoiwnf
(assert (not (str.in_re X (str.to_re "Referer:User-Agent:From:User-Agent:adfsgecoiwnf\u{1b}\u{a}"))))
(check-sat)
