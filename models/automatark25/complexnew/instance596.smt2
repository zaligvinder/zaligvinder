(declare-const X String)
; User-Agent\u{3A}ServerHost\u{3A}
(assert (not (str.in_re X (str.to_re "User-Agent:ServerHost:\u{a}"))))
; /\u{2e}tga([\?\u{5c}\u{2f}]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.tga") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
(check-sat)
