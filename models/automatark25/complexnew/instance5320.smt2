(declare-const X String)
; c\.goclick\.com[^\n\r]*is\s+URLBlaze
(assert (not (str.in_re X (re.++ (str.to_re "c.goclick.com") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "is") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "URLBlaze\u{a}")))))
; for[^\n\r]*Host\u{3A}\sinternalcyber@yahoo\u{2E}comHeadersRedirection
(assert (str.in_re X (re.++ (str.to_re "for") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "internalcyber@yahoo.comHeadersRedirection\u{a}"))))
; ([^\.\?\!]*)[\.\?\!]
(assert (str.in_re X (re.++ (re.* (re.union (str.to_re ".") (str.to_re "?") (str.to_re "!"))) (re.union (str.to_re ".") (str.to_re "?") (str.to_re "!")) (str.to_re "\u{a}"))))
(check-sat)
