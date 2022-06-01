(declare-const X String)
; httphost[^\n\r]*www\u{2E}maxifiles\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "httphost") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "www.maxifiles.com\u{a}")))))
; Ts2\u{2F}\s+insertinfoSnakeUser-Agent\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "Ts2/") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "insertinfoSnakeUser-Agent:\u{a}")))))
; wp-includes\u{2F}theme\u{2E}php\u{3F}\s+TencentTraveler
(assert (str.in_re X (re.++ (str.to_re "wp-includes/theme.php?") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "TencentTraveler\u{a}"))))
(check-sat)
