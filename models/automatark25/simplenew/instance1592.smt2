(declare-const X String)
; toolbarplace\u{2E}com[^\n\r]*Server[^\n\r]*X-Mailer\u{3a}\sUser-Agent\u{3a}Host\u{3A}Bar\u{2F}newsurfer4\u{2F}
(assert (str.in_re X (re.++ (str.to_re "toolbarplace.com") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Server") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "X-Mailer:\u{13}") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "User-Agent:Host:Bar/newsurfer4/\u{a}"))))
(check-sat)
