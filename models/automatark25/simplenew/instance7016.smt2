(declare-const X String)
; Log[^\n\r]*Host\u{3A}\dHOST\u{3A}User-Agent\u{3A}
(assert (str.in_re X (re.++ (str.to_re "Log") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.range "0" "9") (str.to_re "HOST:User-Agent:\u{a}"))))
(check-sat)
