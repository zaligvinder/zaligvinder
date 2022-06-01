(declare-const X String)
; news\s+Host\u{3A}.*Peerwww\u{2E}locators\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "news") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.* re.allchar) (str.to_re "Peerwww.locators.com\u{a}"))))
(check-sat)
