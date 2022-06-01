(declare-const X String)
; Host\u{3A}\s+Server\u{0}User-Agent\u{3a}toolsbar\u{2E}kuaiso\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Server\u{0}User-Agent:toolsbar.kuaiso.com\u{a}"))))
(check-sat)
