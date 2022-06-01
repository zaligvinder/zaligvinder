(declare-const X String)
; Host\u{3A}\dwww\u{2E}trustedsearch\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.range "0" "9") (str.to_re "www.trustedsearch.com\u{a}"))))
; \u{3B}CIA\s+is\s+User-Agent\u{3A}cid=tb\u{2e}Cookie\u{3A}
(assert (str.in_re X (re.++ (str.to_re ";CIA") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "is") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:cid=tb.Cookie:\u{a}"))))
; User-Agent\u{3a}www\u{2E}adoptim\u{2E}com
(assert (not (str.in_re X (str.to_re "User-Agent:www.adoptim.com\u{a}"))))
(check-sat)
