(declare-const X String)
; Supreme\s+User-Agent\u{3A}\s+ApofisToolbarUser
(assert (not (str.in_re X (re.++ (str.to_re "Supreme") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ApofisToolbarUser\u{a}")))))
(check-sat)
