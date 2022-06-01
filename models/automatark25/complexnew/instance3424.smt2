(declare-const X String)
; /\u{2e}afm([\?\u{5c}\u{2f}]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.afm") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; media\u{2E}top-banners\u{2E}com
(assert (not (str.in_re X (str.to_re "media.top-banners.com\u{a}"))))
(check-sat)
