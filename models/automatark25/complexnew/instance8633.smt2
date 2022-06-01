(declare-const X String)
; \u{D}\u{A}Current\u{2E}earthlinkSpyBuddy
(assert (str.in_re X (str.to_re "\u{d}\u{a}Current.earthlinkSpyBuddy\u{a}")))
; searchnugget.*Referer\u{3A}\s+User-Agent\u{3A}Host\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "searchnugget\u{13}") (re.* re.allchar) (str.to_re "Referer:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:Host:\u{a}")))))
(check-sat)
