(declare-const X String)
; /\u{2e}ogg([\?\u{5c}\u{2f}]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.ogg") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; filename=\u{22}\s+www\u{2E}peer2mail\u{2E}com.*LOG
(assert (not (str.in_re X (re.++ (str.to_re "filename=\u{22}") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.peer2mail.com") (re.* re.allchar) (str.to_re "LOG\u{a}")))))
; serverUSER-AttachedReferer\u{3A}youPointsUser-Agent\u{3A}Host\u{3a}
(assert (not (str.in_re X (str.to_re "serverUSER-AttachedReferer:youPointsUser-Agent:Host:\u{a}"))))
(check-sat)
