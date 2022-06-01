(declare-const X String)
; subject\u{3A}node=LoginNSIS_DOWNLOAD
(assert (str.in_re X (str.to_re "subject:node=LoginNSIS_DOWNLOAD\u{a}")))
; /\u{2e}dir([\?\u{5c}\u{2f}]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.dir") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
(check-sat)
