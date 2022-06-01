(declare-const X String)
; www\u{2E}blazefind\u{2E}com.*started\u{2E}\s+CodeguruBrowserwww\u{2E}sogou\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "www.blazefind.com") (re.* re.allchar) (str.to_re "started.") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "CodeguruBrowserwww.sogou.com\u{a}"))))
(check-sat)
