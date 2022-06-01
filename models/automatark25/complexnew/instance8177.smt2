(declare-const X String)
; com\dsearch\u{2e}conduit\u{2e}com\s+User-Agent\u{3A}
(assert (str.in_re X (re.++ (str.to_re "com") (re.range "0" "9") (str.to_re "search.conduit.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:\u{a}"))))
; \u{7D}\u{7B}OS\u{3A}securityUser-Agent\u{3a}www\u{2E}sogou\u{2E}com
(assert (not (str.in_re X (str.to_re "}{OS:securityUser-Agent:www.sogou.com\u{a}"))))
(check-sat)
