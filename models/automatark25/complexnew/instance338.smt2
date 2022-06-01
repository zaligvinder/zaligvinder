(declare-const X String)
; www\.thecommunicator\.net\d+http\u{3A}\u{2F}\u{2F}tv\u{2E}seekmo\u{2E}com\u{2F}showme\u{2E}aspx\u{3F}keyword=
(assert (str.in_re X (re.++ (str.to_re "www.thecommunicator.net") (re.+ (re.range "0" "9")) (str.to_re "http://tv.seekmo.com/showme.aspx?keyword=\u{a}"))))
; A + B
(assert (not (str.in_re X (re.++ (str.to_re "A") (re.+ (str.to_re " ")) (str.to_re " B\u{a}")))))
; /\u{2e}wps([\?\u{5c}\u{2f}]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.wps") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; User-Agent\u{3A}User-Agent\u{3A}Host\u{3a}
(assert (str.in_re X (str.to_re "User-Agent:User-Agent:Host:\u{a}")))
; UI2Host\u{3A}DesktopUser-Agent\u{3a}\u{2F}notifier\u{2F}
(assert (not (str.in_re X (str.to_re "UI2Host:DesktopUser-Agent:/notifier/\u{a}"))))
(check-sat)
