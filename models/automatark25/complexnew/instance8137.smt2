(declare-const X String)
; ^[a-zA-Z]$
(assert (str.in_re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to_re "\u{a}"))))
; User-Agent\u{3A}.*Host\u{3A}.*w3whowww\u{2E}sogou\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.* re.allchar) (str.to_re "Host:") (re.* re.allchar) (str.to_re "w3whowww.sogou.com\u{a}")))))
(check-sat)
