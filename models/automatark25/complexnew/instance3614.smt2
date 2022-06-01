(declare-const X String)
; \.fcgi[^\n\r]*Host\u{3A}\s\u{5D}\u{25}20\u{5B}Port_NETObserveTM_SEARCH3
(assert (not (str.in_re X (re.++ (str.to_re ".fcgi") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "]%20[Port_NETObserveTM_SEARCH3\u{a}")))))
; Host\u{3A}\d+rprpgbnrppb\u{2f}ci[^\n\r]*RXFilteredDmInf\u{5E}
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "rprpgbnrppb/ci") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "RXFilteredDmInf^\u{a}")))))
; /[^ -~\r\n]{4}/P
(assert (not (str.in_re X (re.++ (str.to_re "/") ((_ re.loop 4 4) (re.union (re.range " " "~") (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re "/P\u{a}")))))
; AgentCSmtpsidebar\.activeshopper\.comTry2Find
(assert (not (str.in_re X (str.to_re "AgentCSmtpsidebar.activeshopper.comTry2Find\u{a}"))))
; www\s+X-Mailer\u{3a}SpyBuddyUser-Agent\u{3A}
(assert (str.in_re X (re.++ (str.to_re "www") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "X-Mailer:\u{13}SpyBuddyUser-Agent:\u{a}"))))
(check-sat)
