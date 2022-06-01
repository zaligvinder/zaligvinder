(declare-const X String)
; ver.*Black\s+CD\u{2F}url=Host\u{3a}notification
(assert (str.in_re X (re.++ (str.to_re "ver") (re.* re.allchar) (str.to_re "Black") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "CD/url=Host:notification\u{13}\u{a}"))))
(check-sat)
