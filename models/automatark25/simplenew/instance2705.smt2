(declare-const X String)
; HXDownload\s+Host\u{3A}ArcadeHourspjpoptwql\u{2f}rlnjFrom\u{3A}
(assert (str.in_re X (re.++ (str.to_re "HXDownload") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:ArcadeHourspjpoptwql/rlnjFrom:\u{a}"))))
(check-sat)
