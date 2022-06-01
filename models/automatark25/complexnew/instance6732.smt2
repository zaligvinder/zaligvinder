(declare-const X String)
; LoggerovplUser-Agent\u{3A}t=searchreslt\u{7D}\u{7B}Sysuptime\u{3A}
(assert (str.in_re X (str.to_re "LoggerovplUser-Agent:t=searchreslt}{Sysuptime:\u{a}")))
; Send=\s+User-Agent\u{3A}\s+LoginHost\u{3a}\u{2F}friendship\u{2F}email_thank_you\?Host\u{3a}CenterSubject\u{3A}
(assert (str.in_re X (re.++ (str.to_re "Send=") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "LoginHost:/friendship/email_thank_you?Host:CenterSubject:\u{a}"))))
; www\u{2E}weepee\u{2E}com\d+metaresults\.copernic\.com\s+
(assert (not (str.in_re X (re.++ (str.to_re "www.weepee.com\u{1b}") (re.+ (re.range "0" "9")) (str.to_re "metaresults.copernic.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{a}")))))
; -i%3fUser-Agent\u{3A}www\u{2e}proventactics\u{2e}com
(assert (str.in_re X (str.to_re "-i%3fUser-Agent:www.proventactics.com\u{a}")))
(check-sat)
