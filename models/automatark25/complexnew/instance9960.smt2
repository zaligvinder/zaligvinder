(declare-const X String)
; [-'a-zA-Z]
(assert (not (str.in_re X (re.++ (re.union (str.to_re "-") (str.to_re "'") (re.range "a" "z") (re.range "A" "Z")) (str.to_re "\u{a}")))))
; Ts2\u{2F}\s+insertinfoSnakeUser-Agent\u{3A}
(assert (str.in_re X (re.++ (str.to_re "Ts2/") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "insertinfoSnakeUser-Agent:\u{a}"))))
; www\u{2E}altnet\u{2E}com[^\n\r]*Host\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "www.altnet.com\u{1b}") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Host:\u{a}")))))
; config\u{2E}180solutions\u{2E}com\dStableWeb-MailUser-Agent\u{3A}
(assert (str.in_re X (re.++ (str.to_re "config.180solutions.com") (re.range "0" "9") (str.to_re "StableWeb-MailUser-Agent:\u{a}"))))
(check-sat)
