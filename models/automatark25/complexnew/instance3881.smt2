(declare-const X String)
; /\u{2e}f4a([\?\u{5c}\u{2f}]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.f4a") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; ver.*Black\s+CD\u{2F}url=Host\u{3a}notification
(assert (not (str.in_re X (re.++ (str.to_re "ver") (re.* re.allchar) (str.to_re "Black") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "CD/url=Host:notification\u{13}\u{a}")))))
; Spy\s+\u{d}\u{a}.*YAHOOdestroyed\u{21}Host\u{3a}
(assert (str.in_re X (re.++ (str.to_re "Spy") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{d}\u{a}") (re.* re.allchar) (str.to_re "YAHOOdestroyed!Host:\u{a}"))))
(check-sat)
