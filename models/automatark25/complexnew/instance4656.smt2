(declare-const X String)
; /\u{2e}csv([\?\u{5c}\u{2f}]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.csv") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; select\u{2F}Get\s+Host\u{3A}.*ppcdomain\u{2E}co\u{2E}uk
(assert (not (str.in_re X (re.++ (str.to_re "select/Get") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.* re.allchar) (str.to_re "ppcdomain.co.uk\u{a}")))))
(check-sat)
