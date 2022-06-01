(declare-const X String)
; from\u{3A}Host\u{3a}www\.thecommunicator\.net
(assert (str.in_re X (str.to_re "from:Host:www.thecommunicator.net\u{a}")))
; ^([a-zA-z\s]{2,})$
(assert (str.in_re X (re.++ (str.to_re "\u{a}") ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "z") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* (re.union (re.range "a" "z") (re.range "A" "z") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))))))
; ^([0][1-9]|[1][0-2]):[0-5][0-9] {1}(AM|PM|am|pm)$
(assert (not (str.in_re X (re.++ (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "2"))) (str.to_re ":") (re.range "0" "5") (re.range "0" "9") ((_ re.loop 1 1) (str.to_re " ")) (re.union (str.to_re "AM") (str.to_re "PM") (str.to_re "am") (str.to_re "pm")) (str.to_re "\u{a}")))))
; ProxyDownCurrentUser-Agent\u{3A}Host\u{3A}com\u{2F}index\.php\?tpid=
(assert (not (str.in_re X (str.to_re "ProxyDownCurrentUser-Agent:Host:com/index.php?tpid=\u{a}"))))
; ^(www\.regxlib\.com)$
(assert (str.in_re X (str.to_re "www.regxlib.com\u{a}")))
(check-sat)
