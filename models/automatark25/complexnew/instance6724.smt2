(declare-const X String)
; Host\u{3A}\s+User-Agent\u{3A}.*v\u{3B}ApofisToolbarUser
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:") (re.* re.allchar) (str.to_re "v;ApofisToolbarUser\u{a}"))))
; /User-Agent\u{3A}\s+?mus[\u{d}\u{a}]/iH
(assert (str.in_re X (re.++ (str.to_re "/User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "mus") (re.union (str.to_re "\u{d}") (str.to_re "\u{a}")) (str.to_re "/iH\u{a}"))))
; /filename=[^\n]*\u{2e}flac/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".flac/i\u{a}"))))
; ToolbarUser-Agent\u{3A}From\u{3A}
(assert (str.in_re X (str.to_re "ToolbarUser-Agent:From:\u{a}")))
(check-sat)
